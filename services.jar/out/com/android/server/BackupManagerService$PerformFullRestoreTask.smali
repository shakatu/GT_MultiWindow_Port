.class Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentPassword:Ljava/lang/String;

.field mDecryptPassword:Ljava/lang/String;

.field final mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

.field mInputFile:Landroid/os/ParcelFileDescriptor;

.field final mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 9
    .parameter
    .parameter "fd"
    .parameter "curPassword"
    .parameter "decryptPassword"
    .parameter "observer"
    .parameter "latch"

    .prologue
    const/4 v1, 0x0

    .line 3041
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3022
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 3027
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 3031
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    .line 3034
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 3038
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    .line 3641
    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    .line 3642
    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    .line 3042
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 3043
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 3044
    iput-object p4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 3045
    iput-object p5, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3046
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3047
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3048
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 3049
    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 3053
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3056
    return-void
.end method

.method private HEXLOG([B)V
    .registers 13
    .parameter "block"

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4030
    const/4 v3, 0x0

    .line 4031
    .local v3, offset:I
    array-length v4, p1

    .line 4032
    .local v4, todo:I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4033
    .local v0, buf:Ljava/lang/StringBuilder;
    :goto_d
    if-lez v4, :cond_4f

    .line 4034
    const-string v6, "%04x   "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4035
    if-le v4, v5, :cond_3e

    move v2, v5

    .line 4036
    .local v2, numThisLine:I
    :goto_23
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    if-ge v1, v2, :cond_40

    .line 4037
    const-string v6, "%02x "

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v3, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .end local v1           #i:I
    .end local v2           #numThisLine:I
    :cond_3e
    move v2, v4

    .line 4035
    goto :goto_23

    .line 4039
    .restart local v1       #i:I
    .restart local v2       #numThisLine:I
    :cond_40
    const-string v6, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4041
    sub-int/2addr v4, v2

    .line 4042
    add-int/2addr v3, v2

    .line 4043
    goto :goto_d

    .line 4044
    .end local v1           #i:I
    .end local v2           #numThisLine:I
    :cond_4f
    return-void
.end method


# virtual methods
.method decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 33
    .parameter "encryptionName"
    .parameter "rawInStream"

    .prologue
    .line 3197
    const/16 v19, 0x0

    .line 3199
    .local v19, result:Ljava/io/InputStream;
    :try_start_2
    const-string v26, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_129

    .line 3201
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v25

    .line 3202
    .local v25, userSaltHex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v24

    .line 3204
    .local v24, userSalt:[B
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 3205
    .local v8, ckSaltHex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v8}, Lcom/android/server/BackupManagerService;->access$2000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v7

    .line 3207
    .local v7, ckSalt:[B
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 3208
    .local v21, rounds:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v22

    .line 3210
    .local v22, userIvHex:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 3213
    .local v12, masterKeyBlobHex:Ljava/lang/String;
    const-string v26, "AES/CBC/PKCS5Padding"

    invoke-static/range {v26 .. v26}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 3214
    .local v5, c:Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    move/from16 v3, v21

    #calls: Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v23

    .line 3216
    .local v23, userKey:Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v4

    .line 3217
    .local v4, IV:[B
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v10, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3218
    .local v10, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v26, 0x2

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v28

    const-string v29, "AES"

    invoke-direct/range {v27 .. v29}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v12}, Lcom/android/server/BackupManagerService;->access$2000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v16

    .line 3222
    .local v16, mkCipher:[B
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 3225
    .local v14, mkBlob:[B
    const/16 v17, 0x0

    .line 3226
    .local v17, offset:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #offset:I
    .local v18, offset:I
    aget-byte v11, v14, v17

    .line 3227
    .local v11, len:I
    add-int/lit8 v26, v11, 0x1

    move/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 3228
    add-int/lit8 v17, v11, 0x1

    .line 3230
    .end local v18           #offset:I
    .restart local v17       #offset:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #offset:I
    .restart local v18       #offset:I
    aget-byte v11, v14, v17

    .line 3231
    add-int v26, v18, v11

    move/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 3233
    .local v13, mk:[B
    add-int v17, v18, v11

    .line 3235
    .end local v18           #offset:I
    .restart local v17       #offset:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #offset:I
    .restart local v18       #offset:I
    aget-byte v11, v14, v17

    .line 3236
    add-int v26, v18, v11

    move/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 3240
    .local v15, mkChecksum:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    #calls: Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B
    invoke-static {v0, v13, v7, v1}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;[B[BI)[B

    move-result-object v6

    .line 3241
    .local v6, calculatedCk:[B
    invoke-static {v6, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v26

    if-eqz v26, :cond_114

    .line 3242
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    .end local v10           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v10, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3243
    .restart local v10       #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v26, 0x2

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    const-string v28, "AES"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3247
    new-instance v20, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .end local v19           #result:Ljava/io/InputStream;
    .local v20, result:Ljava/io/InputStream;
    move-object/from16 v19, v20

    .line 3272
    .end local v4           #IV:[B
    .end local v5           #c:Ljavax/crypto/Cipher;
    .end local v6           #calculatedCk:[B
    .end local v7           #ckSalt:[B
    .end local v8           #ckSaltHex:Ljava/lang/String;
    .end local v10           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v11           #len:I
    .end local v12           #masterKeyBlobHex:Ljava/lang/String;
    .end local v13           #mk:[B
    .end local v14           #mkBlob:[B
    .end local v15           #mkChecksum:[B
    .end local v16           #mkCipher:[B
    .end local v18           #offset:I
    .end local v20           #result:Ljava/io/InputStream;
    .end local v21           #rounds:I
    .end local v22           #userIvHex:Ljava/lang/String;
    .end local v23           #userKey:Ljavax/crypto/SecretKey;
    .end local v24           #userSalt:[B
    .end local v25           #userSaltHex:Ljava/lang/String;
    .restart local v19       #result:Ljava/io/InputStream;
    :goto_113
    return-object v19

    .line 3248
    .restart local v4       #IV:[B
    .restart local v5       #c:Ljavax/crypto/Cipher;
    .restart local v6       #calculatedCk:[B
    .restart local v7       #ckSalt:[B
    .restart local v8       #ckSaltHex:Ljava/lang/String;
    .restart local v10       #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v11       #len:I
    .restart local v12       #masterKeyBlobHex:Ljava/lang/String;
    .restart local v13       #mk:[B
    .restart local v14       #mkBlob:[B
    .restart local v15       #mkChecksum:[B
    .restart local v16       #mkCipher:[B
    .restart local v18       #offset:I
    .restart local v21       #rounds:I
    .restart local v22       #userIvHex:Ljava/lang/String;
    .restart local v23       #userKey:Ljavax/crypto/SecretKey;
    .restart local v24       #userSalt:[B
    .restart local v25       #userSaltHex:Ljava/lang/String;
    :cond_114
    const-string v26, "BackupManagerService"

    const-string v27, "Incorrect password"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_11b} :catch_11c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_11b} :catch_146
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_11b} :catch_14f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_11b} :catch_158
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_11b} :catch_161
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_11b} :catch_16a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_11b} :catch_173
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11b} :catch_17c

    goto :goto_113

    .line 3250
    .end local v4           #IV:[B
    .end local v5           #c:Ljavax/crypto/Cipher;
    .end local v6           #calculatedCk:[B
    .end local v7           #ckSalt:[B
    .end local v8           #ckSaltHex:Ljava/lang/String;
    .end local v10           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v11           #len:I
    .end local v12           #masterKeyBlobHex:Ljava/lang/String;
    .end local v13           #mk:[B
    .end local v14           #mkBlob:[B
    .end local v15           #mkChecksum:[B
    .end local v16           #mkCipher:[B
    .end local v18           #offset:I
    .end local v21           #rounds:I
    .end local v22           #userIvHex:Ljava/lang/String;
    .end local v23           #userKey:Ljavax/crypto/SecretKey;
    .end local v24           #userSalt:[B
    .end local v25           #userSaltHex:Ljava/lang/String;
    :catch_11c
    move-exception v9

    .line 3251
    .local v9, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v26, "BackupManagerService"

    const-string v27, "Needed parameter spec unavailable!"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_113

    .line 3249
    .end local v9           #e:Ljava/security/InvalidAlgorithmParameterException;
    :cond_129
    :try_start_129
    const-string v26, "BackupManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unsupported encryption method: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_129 .. :try_end_145} :catch_11c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_129 .. :try_end_145} :catch_146
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_129 .. :try_end_145} :catch_14f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_129 .. :try_end_145} :catch_158
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_129 .. :try_end_145} :catch_161
    .catch Ljava/security/InvalidKeyException; {:try_start_129 .. :try_end_145} :catch_16a
    .catch Ljava/lang/NumberFormatException; {:try_start_129 .. :try_end_145} :catch_173
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_145} :catch_17c

    goto :goto_113

    .line 3252
    :catch_146
    move-exception v9

    .line 3257
    .local v9, e:Ljavax/crypto/BadPaddingException;
    const-string v26, "BackupManagerService"

    const-string v27, "Incorrect password"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 3258
    .end local v9           #e:Ljavax/crypto/BadPaddingException;
    :catch_14f
    move-exception v9

    .line 3259
    .local v9, e:Ljavax/crypto/IllegalBlockSizeException;
    const-string v26, "BackupManagerService"

    const-string v27, "Invalid block size in master key"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 3260
    .end local v9           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_158
    move-exception v9

    .line 3261
    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    const-string v26, "BackupManagerService"

    const-string v27, "Needed decryption algorithm unavailable!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 3262
    .end local v9           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_161
    move-exception v9

    .line 3263
    .local v9, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v26, "BackupManagerService"

    const-string v27, "Needed padding mechanism unavailable!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 3264
    .end local v9           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_16a
    move-exception v9

    .line 3265
    .local v9, e:Ljava/security/InvalidKeyException;
    const-string v26, "BackupManagerService"

    const-string v27, "Illegal password; aborting"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 3266
    .end local v9           #e:Ljava/security/InvalidKeyException;
    :catch_173
    move-exception v9

    .line 3267
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v26, "BackupManagerService"

    const-string v27, "Can\'t parse restore data header"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 3268
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_17c
    move-exception v9

    .line 3269
    .local v9, e:Ljava/io/IOException;
    const-string v26, "BackupManagerService"

    const-string v27, "Can\'t read input header"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113
.end method

.method dumpFileMetadata(Lcom/android/server/BackupManagerService$FileMetadata;)V
    .registers 15
    .parameter "info"

    .prologue
    const/16 v6, 0x78

    const/16 v5, 0x77

    const/16 v4, 0x72

    const-wide/16 v11, 0x0

    const/16 v3, 0x2d

    .line 3892
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3895
    .local v0, b:Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_da

    const/16 v2, 0x64

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3896
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x100

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_dd

    move v2, v4

    :goto_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3897
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x80

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_e0

    move v2, v5

    :goto_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3898
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x40

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_e3

    move v2, v6

    :goto_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3899
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x20

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_e6

    move v2, v4

    :goto_4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3900
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x10

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_e9

    move v2, v5

    :goto_59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3901
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x8

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_ec

    move v2, v6

    :goto_66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3902
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x4

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_ef

    :goto_72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3903
    iget-wide v7, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v9, 0x2

    and-long/2addr v7, v9

    cmp-long v2, v7, v11

    if-eqz v2, :cond_f1

    :goto_7e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3904
    iget-wide v4, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v7, 0x1

    and-long/2addr v4, v7

    cmp-long v2, v4, v11

    if-eqz v2, :cond_f3

    :goto_8a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3905
    const-string v2, " %9d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3907
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 3908
    .local v1, stamp:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd kk:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3910
    iget-object v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3911
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3912
    iget-object v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3913
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3914
    iget-object v2, p1, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3916
    const-string v2, "BackupManagerService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    return-void

    .end local v1           #stamp:Ljava/util/Date;
    :cond_da
    move v2, v3

    .line 3895
    goto/16 :goto_18

    :cond_dd
    move v2, v3

    .line 3896
    goto/16 :goto_25

    :cond_e0
    move v2, v3

    .line 3897
    goto/16 :goto_32

    :cond_e3
    move v2, v3

    .line 3898
    goto/16 :goto_3f

    :cond_e6
    move v2, v3

    .line 3899
    goto/16 :goto_4c

    :cond_e9
    move v2, v3

    .line 3900
    goto/16 :goto_59

    :cond_ec
    move v2, v3

    .line 3901
    goto/16 :goto_66

    :cond_ef
    move v4, v3

    .line 3902
    goto :goto_72

    :cond_f1
    move v5, v3

    .line 3903
    goto :goto_7e

    :cond_f3
    move v6, v3

    .line 3904
    goto :goto_8a
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .registers 10
    .parameter "buffer"
    .parameter "offset"
    .parameter "outStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3873
    array-length v1, p1

    .line 3874
    .local v1, end:I
    if-lt p2, v1, :cond_b

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3877
    :cond_b
    move v2, p2

    .local v2, pos:I
    :goto_c
    if-ge v2, v1, :cond_14

    .line 3878
    aget-byte v0, p1, v2

    .line 3881
    .local v0, c:B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_21

    .line 3885
    .end local v0           #c:B
    :cond_14
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, p2

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/String;-><init>([BII)V

    aput-object v4, p3, v3

    .line 3886
    add-int/lit8 v2, v2, 0x1

    .line 3887
    return v2

    .line 3877
    .restart local v0       #c:B
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method extractRadix([BIII)J
    .registers 14
    .parameter "data"
    .parameter "offset"
    .parameter "maxChars"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4132
    const-wide/16 v3, 0x0

    .line 4133
    .local v3, value:J
    add-int v1, p2, p3

    .line 4134
    .local v1, end:I
    move v2, p2

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 4135
    aget-byte v0, p1, v2

    .line 4137
    .local v0, b:B
    if-eqz v0, :cond_f

    const/16 v5, 0x20

    if-ne v0, v5, :cond_10

    .line 4143
    .end local v0           #b:B
    :cond_f
    return-wide v3

    .line 4138
    .restart local v0       #b:B
    :cond_10
    const/16 v5, 0x30

    if-lt v0, v5, :cond_1a

    add-int/lit8 v5, p4, 0x30

    add-int/lit8 v5, v5, -0x1

    if-le v0, v5, :cond_3e

    .line 4139
    :cond_1a
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4141
    :cond_3e
    int-to-long v5, p4

    mul-long/2addr v5, v3

    add-int/lit8 v7, v0, -0x30

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 4134
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method extractString([BII)Ljava/lang/String;
    .registers 9
    .parameter "data"
    .parameter "offset"
    .parameter "maxChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4147
    add-int v0, p2, p3

    .line 4148
    .local v0, end:I
    move v1, p2

    .line 4150
    .local v1, eos:I
    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v2, p1, v1

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4151
    :cond_c
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method installApk(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 26
    .parameter "info"
    .parameter "installerPackage"
    .parameter "instream"

    .prologue
    .line 3645
    const/4 v9, 0x1

    .line 3647
    .local v9, okay:Z
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installing from backup: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3653
    .local v4, apkFile:Ljava/io/File;
    :try_start_3a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3654
    .local v5, apkStream:Ljava/io/FileOutputStream;
    const v18, 0x8000

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 3655
    .local v6, buffer:[B
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    .line 3656
    .local v13, size:J
    :goto_4a
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_93

    .line 3657
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v13

    if-gez v18, :cond_91

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v15, v0

    .line 3658
    .local v15, toRead:J
    :goto_62
    const/16 v18, 0x0

    long-to-int v0, v15

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 3659
    .local v7, didRead:I
    if-ltz v7, :cond_84

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3660
    :cond_84
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3661
    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v13, v13, v18

    .line 3662
    goto :goto_4a

    .end local v7           #didRead:I
    .end local v15           #toRead:J
    :cond_91
    move-wide v15, v13

    .line 3657
    goto :goto_62

    .line 3663
    :cond_93
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 3666
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3669
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 3670
    .local v10, packageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->reset()V

    .line 3671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 3674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->waitForCompletion()V

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->getResult()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_103

    .line 3680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_f8
    .catchall {:try_start_3a .. :try_end_f8} :catchall_255
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_f8} :catch_18b

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_ff

    .line 3681
    const/4 v9, 0x0

    .line 3731
    .end local v5           #apkStream:Ljava/io/FileOutputStream;
    .end local v6           #buffer:[B
    .end local v10           #packageUri:Landroid/net/Uri;
    .end local v13           #size:J
    :cond_ff
    :goto_ff
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3734
    return v9

    .line 3685
    .restart local v5       #apkStream:Ljava/io/FileOutputStream;
    .restart local v6       #buffer:[B
    .restart local v10       #packageUri:Landroid/net/Uri;
    .restart local v13       #size:J
    :cond_103
    const/16 v17, 0x0

    .line 3686
    .local v17, uninstall:Z
    :try_start_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_196

    .line 3687
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream claimed to include apk for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but apk was really "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    const/4 v9, 0x0

    .line 3692
    const/16 v17, 0x1

    .line 3720
    :cond_154
    :goto_154
    if-eqz v17, :cond_ff

    .line 3721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->reset()V

    .line 3722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 3724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_189
    .catchall {:try_start_105 .. :try_end_189} :catchall_255
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_189} :catch_18b

    goto/16 :goto_ff

    .line 3727
    .end local v5           #apkStream:Ljava/io/FileOutputStream;
    .end local v6           #buffer:[B
    .end local v10           #packageUri:Landroid/net/Uri;
    .end local v13           #size:J
    .end local v17           #uninstall:Z
    :catch_18b
    move-exception v8

    .line 3728
    .local v8, e:Ljava/io/IOException;
    :try_start_18c
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to transcribe restored apk for install"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_193
    .catchall {:try_start_18c .. :try_end_193} :catchall_255

    .line 3729
    const/4 v9, 0x0

    goto/16 :goto_ff

    .line 3695
    .end local v8           #e:Ljava/io/IOException;
    .restart local v5       #apkStream:Ljava/io/FileOutputStream;
    .restart local v6       #buffer:[B
    .restart local v10       #packageUri:Landroid/net/Uri;
    .restart local v13       #size:J
    .restart local v17       #uninstall:Z
    :cond_196
    :try_start_196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 3697
    .local v11, pkg:Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const v19, 0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_1e4

    .line 3698
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream contains apk of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but it disallows backup/restore"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    const/4 v9, 0x0

    goto/16 :goto_154

    .line 3703
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    .line 3704
    .local v12, sigs:[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v12, v11}, Lcom/android/server/BackupManagerService;->access$2100(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-nez v18, :cond_154

    .line 3705
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " signatures do not match restore manifest"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_228
    .catchall {:try_start_196 .. :try_end_228} :catchall_255
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_196 .. :try_end_228} :catch_22d
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_228} :catch_18b

    .line 3707
    const/4 v9, 0x0

    .line 3708
    const/16 v17, 0x1

    goto/16 :goto_154

    .line 3711
    .end local v11           #pkg:Landroid/content/pm/PackageInfo;
    .end local v12           #sigs:[Landroid/content/pm/Signature;
    :catch_22d
    move-exception v8

    .line 3712
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_22e
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Install of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " succeeded but now not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_252
    .catchall {:try_start_22e .. :try_end_252} :catchall_255
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_252} :catch_18b

    .line 3714
    const/4 v9, 0x0

    goto/16 :goto_154

    .line 3731
    .end local v5           #apkStream:Ljava/io/FileOutputStream;
    .end local v6           #buffer:[B
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #packageUri:Landroid/net/Uri;
    .end local v13           #size:J
    .end local v17           #uninstall:Z
    :catchall_255
    move-exception v18

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v18
.end method

.method readAppManifest(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$RestorePolicy;
    .registers 25
    .parameter "info"
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3754
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x10000

    cmp-long v18, v18, v20

    if-lez v18, :cond_2c

    .line 3755
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3758
    :cond_2c
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 3759
    .local v4, buffer:[B
    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_12f

    .line 3760
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3763
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    .line 3764
    .local v14, policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3765
    .local v16, str:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 3768
    .local v11, offset:I
    :try_start_82
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3769
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 3770
    .local v17, version:I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_31e

    .line 3771
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3772
    const/16 v18, 0x0

    aget-object v9, v16, v18

    .line 3774
    .local v9, manifestPackage:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2f2

    .line 3775
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3776
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 3777
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3778
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3779
    .local v13, platformVersion:I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3780
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_137

    const/16 v18, 0x0

    aget-object v18, v16, v18

    :goto_ea
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 3781
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3782
    const/16 v18, 0x0

    aget-object v18, v16, v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3783
    .local v7, hasApk:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3784
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 3785
    .local v10, numSigs:I
    if-lez v10, :cond_2d2

    .line 3786
    new-array v15, v10, [Landroid/content/pm/Signature;

    .line 3787
    .local v15, sigs:[Landroid/content/pm/Signature;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_117
    if-ge v8, v10, :cond_13a

    .line 3788
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 3789
    new-instance v18, Landroid/content/pm/Signature;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v18, v15, v8
    :try_end_12c
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_12c} :catch_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_12c} :catch_2c6

    .line 3787
    add-int/lit8 v8, v8, 0x1

    goto :goto_117

    .line 3761
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v11           #offset:I
    .end local v13           #platformVersion:I
    .end local v14           #policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v16           #str:[Ljava/lang/String;
    .end local v17           #version:I
    :cond_12f
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Unexpected EOF in manifest"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3780
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v11       #offset:I
    .restart local v13       #platformVersion:I
    .restart local v14       #policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    .restart local v16       #str:[Ljava/lang/String;
    .restart local v17       #version:I
    :cond_137
    const/16 v18, 0x0

    goto :goto_ea

    .line 3791
    .restart local v7       #hasApk:Z
    .restart local v8       #i:I
    .restart local v10       #numSigs:I
    .restart local v15       #sigs:[Landroid/content/pm/Signature;
    :cond_13a
    :try_start_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14d
    .catch Ljava/lang/NumberFormatException; {:try_start_13a .. :try_end_14d} :catch_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13a .. :try_end_14d} :catch_2c6

    .line 3795
    :try_start_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 3798
    .local v12, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3799
    .local v6, flags:I
    const v18, 0x8000

    and-int v18, v18, v6

    if-eqz v18, :cond_2a0

    .line 3802
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_190

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_259

    .line 3811
    :cond_190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v15, v12}, Lcom/android/server/BackupManagerService;->access$2100(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_211

    .line 3812
    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_1de

    .line 3813
    const-string v18, "BackupManagerService"

    const-string v19, "Sig + version match; taking data"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_1b1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14d .. :try_end_1b1} :catch_230
    .catch Ljava/lang/NumberFormatException; {:try_start_14d .. :try_end_1b1} :catch_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14d .. :try_end_1b1} :catch_2c6

    .line 3845
    .end local v6           #flags:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_1b1
    :try_start_1b1
    sget-object v18, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_1dd

    if-nez v7, :cond_1dd

    .line 3846
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot restore package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " without the matching .apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dd
    .catch Ljava/lang/NumberFormatException; {:try_start_1b1 .. :try_end_1dd} :catch_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b1 .. :try_end_1dd} :catch_2c6

    .line 3867
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v13           #platformVersion:I
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v17           #version:I
    :cond_1dd
    :goto_1dd
    return-object v14

    .line 3819
    .restart local v6       #flags:I
    .restart local v7       #hasApk:Z
    .restart local v8       #i:I
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v10       #numSigs:I
    .restart local v12       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v13       #platformVersion:I
    .restart local v15       #sigs:[Landroid/content/pm/Signature;
    .restart local v17       #version:I
    :cond_1de
    :try_start_1de
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Data version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is newer than installed version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - requiring apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    goto :goto_1b1

    .line 3825
    :cond_211
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1de .. :try_end_22f} :catch_230
    .catch Ljava/lang/NumberFormatException; {:try_start_1de .. :try_end_22f} :catch_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1de .. :try_end_22f} :catch_2c6

    goto :goto_1b1

    .line 3836
    .end local v6           #flags:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_230
    move-exception v5

    .line 3840
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_231
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not installed; requiring apk in dataset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_257
    .catch Ljava/lang/NumberFormatException; {:try_start_231 .. :try_end_257} :catch_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_231 .. :try_end_257} :catch_2c6

    goto/16 :goto_1b1

    .line 3829
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #flags:I
    .restart local v12       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_259
    :try_start_259
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is system level with no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_259 .. :try_end_27d} :catch_230
    .catch Ljava/lang/NumberFormatException; {:try_start_259 .. :try_end_27d} :catch_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_259 .. :try_end_27d} :catch_2c6

    goto/16 :goto_1b1

    .line 3861
    .end local v6           #flags:I
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v13           #platformVersion:I
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v17           #version:I
    :catch_27f
    move-exception v5

    .line 3862
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Corrupt restore manifest for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1dd

    .line 3833
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #flags:I
    .restart local v7       #hasApk:Z
    .restart local v8       #i:I
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v10       #numSigs:I
    .restart local v12       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v13       #platformVersion:I
    .restart local v15       #sigs:[Landroid/content/pm/Signature;
    .restart local v17       #version:I
    :cond_2a0
    :try_start_2a0
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but allowBackup=false"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a0 .. :try_end_2c4} :catch_230
    .catch Ljava/lang/NumberFormatException; {:try_start_2a0 .. :try_end_2c4} :catch_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a0 .. :try_end_2c4} :catch_2c6

    goto/16 :goto_1b1

    .line 3863
    .end local v6           #flags:I
    .end local v7           #hasApk:Z
    .end local v8           #i:I
    .end local v9           #manifestPackage:Ljava/lang/String;
    .end local v10           #numSigs:I
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v13           #platformVersion:I
    .end local v15           #sigs:[Landroid/content/pm/Signature;
    .end local v17           #version:I
    :catch_2c6
    move-exception v5

    .line 3864
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "BackupManagerService"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1dd

    .line 3850
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #hasApk:Z
    .restart local v9       #manifestPackage:Ljava/lang/String;
    .restart local v10       #numSigs:I
    .restart local v13       #platformVersion:I
    .restart local v17       #version:I
    :cond_2d2
    :try_start_2d2
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Missing signature on backed-up package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1dd

    .line 3854
    .end local v7           #hasApk:Z
    .end local v10           #numSigs:I
    .end local v13           #platformVersion:I
    :cond_2f2
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expected package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but restore manifest claims "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1dd

    .line 3858
    .end local v9           #manifestPackage:Ljava/lang/String;
    :cond_31e
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown restore manifest version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34a
    .catch Ljava/lang/NumberFormatException; {:try_start_2d2 .. :try_end_34a} :catch_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d2 .. :try_end_34a} :catch_2c6

    goto/16 :goto_1dd
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .registers 9
    .parameter "in"
    .parameter "buffer"
    .parameter "offset"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4051
    if-gtz p4, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4053
    :cond_a
    const/4 v1, 0x0

    .line 4054
    .local v1, soFar:I
    :goto_b
    if-ge v1, p4, :cond_17

    .line 4055
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 4056
    .local v0, nRead:I
    if-gtz v0, :cond_18

    .line 4062
    .end local v0           #nRead:I
    :cond_17
    return v1

    .line 4060
    .restart local v0       #nRead:I
    :cond_18
    add-int/2addr v1, v0

    .line 4061
    goto :goto_b
.end method

.method readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3188
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3189
    .local v0, buffer:Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, c:I
    if-ltz v1, :cond_11

    .line 3190
    const/16 v2, 0xa

    if-ne v1, v2, :cond_16

    .line 3193
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3191
    :cond_16
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/BackupManagerService$FileMetadata;)Z
    .registers 18
    .parameter "instream"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4077
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v13, 0x8000

    cmp-long v11, v11, v13

    if-lez v11, :cond_4a

    .line 4078
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspiciously large pax header size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - aborting"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sanity failure: pax header size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4084
    :cond_4a
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v13, 0x1ff

    add-long/2addr v11, v13

    const/16 v13, 0x9

    shr-long/2addr v11, v13

    long-to-int v7, v11

    .line 4085
    .local v7, numBlocks:I
    mul-int/lit16 v11, v7, 0x200

    new-array v2, v11, [B

    .line 4086
    .local v2, data:[B
    const/4 v11, 0x0

    array-length v12, v2

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v11, v12}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    array-length v12, v2

    if-ge v11, v12, :cond_6c

    .line 4087
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Unable to read full pax header"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4089
    :cond_6c
    iget-wide v11, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    array-length v13, v2

    int-to-long v13, v13

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 4091
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    long-to-int v1, v11

    .line 4092
    .local v1, contentSize:I
    const/4 v8, 0x0

    .line 4095
    .local v8, offset:I
    :cond_79
    add-int/lit8 v3, v8, 0x1

    .line 4096
    .local v3, eol:I
    :goto_7b
    if-ge v3, v1, :cond_86

    aget-byte v11, v2, v3

    const/16 v12, 0x20

    if-eq v11, v12, :cond_86

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 4097
    :cond_86
    if-lt v3, v1, :cond_90

    .line 4099
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid pax data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4102
    :cond_90
    sub-int v11, v3, v8

    const/16 v12, 0xa

    invoke-virtual {p0, v2, v8, v11, v12}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v11

    long-to-int v6, v11

    .line 4103
    .local v6, linelen:I
    add-int/lit8 v4, v3, 0x1

    .line 4104
    .local v4, key:I
    add-int v11, v8, v6

    add-int/lit8 v3, v11, -0x1

    .line 4106
    add-int/lit8 v10, v4, 0x1

    .local v10, value:I
    :goto_a1
    aget-byte v11, v2, v10

    const/16 v12, 0x3d

    if-eq v11, v12, :cond_ac

    if-gt v10, v3, :cond_ac

    add-int/lit8 v10, v10, 0x1

    goto :goto_a1

    .line 4107
    :cond_ac
    if-le v10, v3, :cond_b6

    .line 4108
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid pax declaration"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 4112
    :cond_b6
    new-instance v5, Ljava/lang/String;

    sub-int v11, v10, v4

    const-string v12, "UTF-8"

    invoke-direct {v5, v2, v4, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 4114
    .local v5, keyStr:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    sub-int v12, v3, v10

    add-int/lit8 v12, v12, -0x1

    const-string v13, "UTF-8"

    invoke-direct {v9, v2, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 4116
    .local v9, valStr:Ljava/lang/String;
    const-string v11, "path"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_dd

    .line 4117
    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 4124
    :goto_d8
    add-int/2addr v8, v6

    .line 4125
    if-lt v8, v1, :cond_79

    .line 4127
    const/4 v11, 0x1

    return v11

    .line 4118
    :cond_dd
    const-string v11, "size"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ee

    .line 4119
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v0, p2

    iput-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    goto :goto_d8

    .line 4121
    :cond_ee
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unhandled pax key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .registers 8
    .parameter "instream"
    .parameter "block"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 4066
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 4067
    .local v0, got:I
    if-nez v0, :cond_a

    .line 4070
    :goto_9
    return v1

    .line 4068
    :cond_a
    if-ge v0, v2, :cond_14

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4069
    :cond_14
    iget-wide v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    const-wide/16 v3, 0x200

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 4070
    const/4 v1, 0x1

    goto :goto_9
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$FileMetadata;
    .registers 15
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3921
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 3922
    .local v0, block:[B
    const/4 v3, 0x0

    .line 3924
    .local v3, info:Lcom/android/server/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 3925
    .local v2, gotHeader:Z
    if-eqz v2, :cond_13b

    .line 3928
    :try_start_b
    new-instance v4, Lcom/android/server/BackupManagerService$FileMetadata;

    invoke-direct {v4}, Lcom/android/server/BackupManagerService$FileMetadata;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_26d

    .line 3929
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .local v4, info:Lcom/android/server/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_16
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    .line 3930
    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    .line 3931
    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    .line 3933
    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3934
    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 3935
    .local v5, path:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7f

    .line 3936
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3937
    :cond_6a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3941
    :cond_7f
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 3942
    .local v7, typeChar:I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_c1

    .line 3944
    invoke-virtual {p0, p1, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/BackupManagerService$FileMetadata;)Z

    move-result v2

    .line 3945
    if-eqz v2, :cond_91

    .line 3948
    invoke-virtual {p0, p1, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 3950
    :cond_91
    if-nez v2, :cond_bd

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9b} :catch_9b

    .line 4018
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #typeChar:I
    :catch_9b
    move-exception v1

    move-object v3, v4

    .line 4020
    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :goto_9d
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    invoke-direct {p0, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->HEXLOG([B)V

    .line 4023
    throw v1

    .line 3952
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v4       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #typeChar:I
    :cond_bd
    const/16 v8, 0x9c

    :try_start_bf
    aget-byte v7, v0, v8

    .line 3955
    :cond_c1
    sparse-switch v7, :sswitch_data_270

    .line 3971
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3956
    :sswitch_f5
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    .line 3979
    :cond_f8
    :goto_f8
    const-string v8, "shared/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "shared/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_170

    .line 3982
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3983
    const-string v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 3984
    const-string v8, "shared"

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 3985
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13a
    :goto_13a
    move-object v3, v4

    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #typeChar:I
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :cond_13b
    move-object v8, v3

    .line 4026
    :goto_13c
    return-object v8

    .line 3958
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v4       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #typeChar:I
    :sswitch_13d
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    .line 3959
    iget-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_f8

    .line 3960
    const-string v8, "BackupManagerService"

    const-string v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    goto :goto_f8

    .line 3967
    :sswitch_154
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saw type=0 in tar header block, info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    const/4 v3, 0x0

    move-object v8, v3

    move-object v3, v4

    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    goto :goto_13c

    .line 3986
    .end local v3           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .restart local v4       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :cond_170
    const-string v8, "apps/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "apps/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_13a

    .line 3991
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 3994
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3995
    .local v6, slash:I
    if-gez v6, :cond_1b5

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3996
    :cond_1b5
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 3997
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 4000
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13a

    .line 4001
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4002
    if-gez v6, :cond_1f7

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4003
    :cond_1f7
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 4005
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_261

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_261

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "db"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_261

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "r"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_261

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "sp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_261

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "obb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_261

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_261

    .line 4012
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecognized domain "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4015
    :cond_261
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_26b
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_26b} :catch_9b

    goto/16 :goto_13a

    .line 4018
    .end local v4           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #slash:I
    .end local v7           #typeChar:I
    .restart local v3       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    :catch_26d
    move-exception v1

    goto/16 :goto_9d

    .line 3955
    :sswitch_data_270
    .sparse-switch
        0x0 -> :sswitch_154
        0x30 -> :sswitch_f5
        0x35 -> :sswitch_13d
    .end sparse-switch
.end method

.method restoreOneFile(Ljava/io/InputStream;[B)Z
    .registers 40
    .parameter "instream"
    .parameter "buffer"

    .prologue
    .line 3278
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$FileMetadata;

    move-result-object v6

    .line 3279
    .local v6, info:Lcom/android/server/BackupManagerService$FileMetadata;
    if-eqz v6, :cond_86

    .line 3284
    iget-object v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 3285
    .local v32, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 3288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 3289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3294
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_50

    .line 3295
    const-string v4, "BackupManagerService"

    const-string v5, "Saw new package; tearing down old one"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3298
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 3299
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 3303
    :cond_50
    iget-object v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v5, "_manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 3304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readAppManifest(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$RestorePolicy;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v5, v6, Lcom/android/server/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3309
    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 3310
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    .line 3530
    .end local v32           #pkg:Ljava/lang/String;
    :cond_86
    :goto_86
    if-eqz v6, :cond_3f9

    const/4 v4, 0x1

    :goto_89
    return v4

    .line 3314
    .restart local v32       #pkg:Ljava/lang/String;
    :cond_8a
    const/16 v29, 0x1

    .line 3315
    .local v29, okay:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/BackupManagerService$RestorePolicy;

    .line 3316
    .local v33, policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    sget-object v4, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestorePolicy:[I

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3fc

    .line 3361
    const-string v4, "BackupManagerService"

    const-string v5, "Invalid policy from manifest"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    const/16 v29, 0x0

    .line 3363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3369
    :cond_b7
    :goto_b7
    if-eqz v29, :cond_c6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_c6

    .line 3370
    const-string v4, "BackupManagerService"

    const-string v5, "Reusing existing agent instance"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    :cond_c6
    if-eqz v29, :cond_172

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_172

    .line 3373
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to launch agent for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e8} :catch_3ec

    .line 3376
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 3380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36b

    .line 3384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_342

    .line 3385
    const-string v4, "BackupManagerService"

    const-string v5, "Clearing app data preparatory to full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 3391
    :goto_11f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3397
    :goto_128
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->setUpPipes()V

    .line 3398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v7}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3400
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_142} :catch_368
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e8 .. :try_end_142} :catch_374

    .line 3407
    :goto_142
    :try_start_142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_172

    .line 3408
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create agent for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    const/16 v29, 0x0

    .line 3410
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3417
    :cond_172
    if-eqz v29, :cond_1aa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1aa

    .line 3418
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring data for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " but agent is for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    const/16 v29, 0x0

    .line 3427
    :cond_1aa
    if-eqz v29, :cond_28b

    .line 3428
    const/16 v22, 0x1

    .line 3429
    .local v22, agentSuccess:Z
    iget-wide v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v34, v0

    .line 3430
    .local v34, toCopy:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/BackupManagerService;->generateToken()I
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_1b9} :catch_3ec

    move-result v8

    .line 3432
    .local v8, token:I
    :try_start_1ba
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invoking agent to restore file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v6, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v9, 0x493e0

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v9, v10, v5}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 3439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_377

    .line 3440
    const-string v4, "BackupManagerService"

    const-string v5, "system process agent - spinning a thread"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    new-instance v3, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 3443
    .local v3, runner:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_20e} :catch_3a1
    .catch Landroid/os/RemoteException; {:try_start_1ba .. :try_end_20e} :catch_3af

    .line 3463
    .end local v3           #runner:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    :goto_20e
    if-eqz v29, :cond_263

    .line 3464
    const/16 v31, 0x1

    .line 3465
    .local v31, pipeOkay:Z
    :try_start_212
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3467
    .local v30, pipe:Ljava/io/FileOutputStream;
    :cond_224
    :goto_224
    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-lez v4, :cond_252

    .line 3468
    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v34, v4

    if-lez v4, :cond_3bd

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v36, v0

    .line 3470
    .local v36, toRead:I
    :goto_237
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v36

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v27

    .line 3471
    .local v27, nRead:I
    if-ltz v27, :cond_250

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move/from16 v0, v27

    int-to-long v9, v0

    add-long/2addr v4, v9

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3472
    :cond_250
    if-gtz v27, :cond_3c4

    .line 3489
    .end local v27           #nRead:I
    .end local v36           #toRead:I
    :cond_252
    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 3493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v22

    .line 3498
    .end local v30           #pipe:Ljava/io/FileOutputStream;
    .end local v31           #pipeOkay:Z
    :cond_263
    if-nez v22, :cond_28b

    .line 3499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 3500
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3502
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3510
    .end local v8           #token:I
    .end local v22           #agentSuccess:Z
    .end local v34           #toCopy:J
    :cond_28b
    if-nez v29, :cond_86

    .line 3511
    const-string v4, "BackupManagerService"

    const-string v5, "[discarding file content]"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v9, 0x1ff

    add-long/2addr v4, v9

    const-wide/16 v9, -0x200

    and-long v23, v4, v9

    .line 3513
    .local v23, bytesToConsume:J
    :goto_29d
    const-wide/16 v4, 0x0

    cmp-long v4, v23, v4

    if-lez v4, :cond_86

    .line 3514
    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v23, v4

    if-lez v4, :cond_3e5

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v36, v0

    .line 3516
    .restart local v36       #toRead:I
    :goto_2b0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v36

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v27, v0

    .line 3517
    .local v27, nRead:J
    const-wide/16 v4, 0x0

    cmp-long v4, v27, v4

    if-ltz v4, :cond_2ce

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    add-long v4, v4, v27

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3518
    :cond_2ce
    const-wide/16 v4, 0x0

    cmp-long v4, v27, v4

    if-lez v4, :cond_86

    .line 3519
    sub-long v23, v23, v27

    .line 3520
    goto :goto_29d

    .line 3318
    .end local v23           #bytesToConsume:J
    .end local v27           #nRead:J
    .end local v36           #toRead:I
    :pswitch_2d7
    const/16 v29, 0x0

    .line 3319
    goto/16 :goto_b7

    .line 3324
    :pswitch_2db
    iget-object v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31e

    .line 3325
    const-string v4, "BackupManagerService"

    const-string v5, "APK file; installing"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 3328
    .local v26, installerName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->installApk(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v29

    .line 3330
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v29, :cond_31b

    sget-object v4, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    :goto_30a
    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3336
    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    .line 3337
    const/4 v4, 0x1

    goto/16 :goto_89

    .line 3330
    :cond_31b
    sget-object v4, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    goto :goto_30a

    .line 3341
    .end local v26           #installerName:Ljava/lang/String;
    :cond_31e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3342
    const/16 v29, 0x0

    .line 3344
    goto/16 :goto_b7

    .line 3347
    :pswitch_32d
    iget-object v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 3348
    const-string v4, "BackupManagerService"

    const-string v5, "apk present but ACCEPT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33e
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_33e} :catch_3ec

    .line 3353
    const/16 v29, 0x0

    goto/16 :goto_b7

    .line 3388
    :cond_342
    :try_start_342
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup agent ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") => no clear"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11f

    .line 3401
    :catch_368
    move-exception v4

    goto/16 :goto_142

    .line 3393
    :cond_36b
    const-string v4, "BackupManagerService"

    const-string v5, "We\'ve initialized this app already; no clear required"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_372
    .catch Ljava/io/IOException; {:try_start_342 .. :try_end_372} :catch_368
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_342 .. :try_end_372} :catch_374

    goto/16 :goto_128

    .line 3403
    :catch_374
    move-exception v4

    goto/16 :goto_142

    .line 3445
    .restart local v8       #token:I
    .restart local v22       #agentSuccess:Z
    .restart local v34       #toCopy:J
    :cond_377
    :try_start_377
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v10, v4, v5

    iget-wide v11, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    iget v13, v6, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    iget-object v14, v6, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    iget-wide v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    move-wide/from16 v16, v0

    iget-wide v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v4, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v21, v0

    move/from16 v20, v8

    invoke-interface/range {v9 .. v21}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_39f
    .catch Ljava/io/IOException; {:try_start_377 .. :try_end_39f} :catch_3a1
    .catch Landroid/os/RemoteException; {:try_start_377 .. :try_end_39f} :catch_3af

    goto/16 :goto_20e

    .line 3449
    :catch_3a1
    move-exception v25

    .line 3451
    .local v25, e:Ljava/io/IOException;
    :try_start_3a2
    const-string v4, "BackupManagerService"

    const-string v5, "Couldn\'t establish restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    const/16 v22, 0x0

    .line 3453
    const/16 v29, 0x0

    .line 3460
    goto/16 :goto_20e

    .line 3454
    .end local v25           #e:Ljava/io/IOException;
    :catch_3af
    move-exception v25

    .line 3457
    .local v25, e:Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v5, "Agent crashed during full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b7
    .catch Ljava/io/IOException; {:try_start_3a2 .. :try_end_3b7} :catch_3ec

    .line 3458
    const/16 v22, 0x0

    .line 3459
    const/16 v29, 0x0

    goto/16 :goto_20e

    .line 3468
    .end local v25           #e:Landroid/os/RemoteException;
    .restart local v30       #pipe:Ljava/io/FileOutputStream;
    .restart local v31       #pipeOkay:Z
    :cond_3bd
    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v36, v0

    goto/16 :goto_237

    .line 3473
    .local v27, nRead:I
    .restart local v36       #toRead:I
    :cond_3c4
    move/from16 v0, v27

    int-to-long v4, v0

    sub-long v34, v34, v4

    .line 3477
    if-eqz v31, :cond_224

    .line 3479
    const/4 v4, 0x0

    :try_start_3cc
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3d5
    .catch Ljava/io/IOException; {:try_start_3cc .. :try_end_3d5} :catch_3d7

    goto/16 :goto_224

    .line 3480
    :catch_3d7
    move-exception v25

    .line 3481
    .local v25, e:Ljava/io/IOException;
    :try_start_3d8
    const-string v4, "BackupManagerService"

    const-string v5, "Failed to write to restore pipe"

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e1
    .catch Ljava/io/IOException; {:try_start_3d8 .. :try_end_3e1} :catch_3ec

    .line 3482
    const/16 v31, 0x0

    goto/16 :goto_224

    .line 3514
    .end local v8           #token:I
    .end local v22           #agentSuccess:Z
    .end local v25           #e:Ljava/io/IOException;
    .end local v27           #nRead:I
    .end local v30           #pipe:Ljava/io/FileOutputStream;
    .end local v31           #pipeOkay:Z
    .end local v34           #toCopy:J
    .end local v36           #toRead:I
    .restart local v23       #bytesToConsume:J
    :cond_3e5
    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v36, v0

    goto/16 :goto_2b0

    .line 3524
    .end local v6           #info:Lcom/android/server/BackupManagerService$FileMetadata;
    .end local v23           #bytesToConsume:J
    .end local v29           #okay:Z
    .end local v32           #pkg:Ljava/lang/String;
    .end local v33           #policy:Lcom/android/server/BackupManagerService$RestorePolicy;
    :catch_3ec
    move-exception v25

    .line 3525
    .restart local v25       #e:Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "io exception on restore socket read"

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3527
    const/4 v6, 0x0

    .restart local v6       #info:Lcom/android/server/BackupManagerService$FileMetadata;
    goto/16 :goto_86

    .line 3530
    .end local v25           #e:Ljava/io/IOException;
    :cond_3f9
    const/4 v4, 0x0

    goto/16 :goto_89

    .line 3316
    :pswitch_data_3fc
    .packed-switch 0x1
        :pswitch_2d7
        :pswitch_2db
        :pswitch_32d
    .end packed-switch
.end method

.method public run()V
    .registers 23

    .prologue
    .line 3092
    const-string v18, "BackupManagerService"

    const-string v19, "--- Performing full-dataset restore ---"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendStartRestore()V

    .line 3096
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    const-string v19, "mounted"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23

    .line 3097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string v19, "com.android.sharedstoragebackup"

    sget-object v20, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    :cond_23
    const/4 v14, 0x0

    .line 3101
    .local v14, rawInStream:Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 3103
    .local v12, rawDataIn:Ljava/io/DataInputStream;
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->hasBackupPassword()Z

    move-result v18

    if-eqz v18, :cond_c2

    .line 3104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2710

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v18

    if-nez v18, :cond_c2

    .line 3105
    const-string v18, "BackupManagerService"

    const-string v19, "Backup password mismatch; aborting"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_403
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_4c} :catch_40a

    .line 3162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3166
    if-eqz v12, :cond_5f

    :try_start_5e
    throw v12

    .line 3167
    :cond_5f
    if-eqz v14, :cond_62

    throw v14

    .line 3168
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6b} :catch_3c7

    .line 3173
    :goto_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3174
    :try_start_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 3175
    monitor-exit v19
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_3d5

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3177
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 3179
    monitor-exit v19
    :try_end_a8
    .catchall {:try_start_8f .. :try_end_a8} :catchall_3d8

    .line 3180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3181
    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    :goto_be
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3184
    :goto_c1
    return-void

    .line 3110
    :cond_c2
    const-wide/16 v18, 0x0

    :try_start_c4
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3111
    const v18, 0x8000

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 3112
    .local v3, buffer:[B
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_e2
    .catchall {:try_start_c4 .. :try_end_e2} :catchall_403
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_e2} :catch_40a

    .line 3113
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .local v15, rawInStream:Ljava/io/FileInputStream;
    :try_start_e2
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e7
    .catchall {:try_start_e2 .. :try_end_e7} :catchall_406
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e7} :catch_40d

    .line 3116
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .local v13, rawDataIn:Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 3117
    .local v4, compressed:Z
    move-object v11, v15

    .line 3120
    .local v11, preCompressStream:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 3121
    .local v10, okay:Z
    :try_start_ea
    const-string v18, "ANDROID BACKUP\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    .line 3122
    .local v7, headerLen:I
    new-array v0, v7, [B

    move-object/from16 v17, v0

    .line 3123
    .local v17, streamHeader:[B
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 3124
    const-string v18, "ANDROID BACKUP\n"

    const-string v19, "UTF-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 3125
    .local v9, magicBytes:[B
    move-object/from16 v0, v17

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18

    if-eqz v18, :cond_307

    .line 3127
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 3128
    .local v16, s:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_270

    .line 3130
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 3131
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_1c1

    const/4 v4, 0x1

    .line 3132
    :goto_128
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 3133
    const-string v18, "none"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c4

    .line 3135
    const/4 v10, 0x1

    .line 3145
    .end local v16           #s:Ljava/lang/String;
    :cond_13b
    :goto_13b
    if-nez v10, :cond_310

    .line 3146
    const-string v18, "BackupManagerService"

    const-string v19, "Invalid restore data; aborting."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_ea .. :try_end_144} :catchall_28e
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_144} :catch_1ee

    .line 3162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3166
    if-eqz v13, :cond_159

    :try_start_156
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    .line 3167
    :cond_159
    if-eqz v15, :cond_15e

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 3168
    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_167} :catch_3db

    .line 3173
    :goto_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3174
    :try_start_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 3175
    monitor-exit v19
    :try_end_184
    .catchall {:try_start_174 .. :try_end_184} :catchall_3e9

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3177
    :try_start_18b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 3179
    monitor-exit v19
    :try_end_1a4
    .catchall {:try_start_18b .. :try_end_1a4} :catchall_3ec

    .line 3180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3181
    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v12, v13

    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    move-object v14, v15

    .line 3147
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_c1

    .line 3131
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/lang/String;
    :cond_1c1
    const/4 v4, 0x0

    goto/16 :goto_128

    .line 3136
    :cond_1c4
    :try_start_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1e5

    .line 3137
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v11

    .line 3138
    if-eqz v11, :cond_13b

    .line 3139
    const/4 v10, 0x1

    goto/16 :goto_13b

    .line 3141
    :cond_1e5
    const-string v18, "BackupManagerService"

    const-string v19, "Archive is encrypted but no password given"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catchall {:try_start_1c4 .. :try_end_1ec} :catchall_28e
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1ec} :catch_1ee

    goto/16 :goto_13b

    .line 3159
    .end local v7           #headerLen:I
    .end local v9           #magicBytes:[B
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #streamHeader:[B
    :catch_1ee
    move-exception v6

    move-object v12, v13

    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    move-object v14, v15

    .line 3160
    .end local v3           #buffer:[B
    .end local v4           #compressed:Z
    .end local v10           #okay:Z
    .end local v11           #preCompressStream:Ljava/io/InputStream;
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .local v6, e:Ljava/io/IOException;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    :goto_1f1
    :try_start_1f1
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to read restore input"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f8
    .catchall {:try_start_1f1 .. :try_end_1f8} :catchall_403

    .line 3162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3166
    if-eqz v12, :cond_20d

    :try_start_20a
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 3167
    :cond_20d
    if-eqz v14, :cond_212

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 3168
    :cond_212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21b
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_21b} :catch_3b3

    .line 3173
    :goto_21b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3174
    :try_start_228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 3175
    monitor-exit v19
    :try_end_238
    .catchall {:try_start_228 .. :try_end_238} :catchall_3c1

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3177
    :try_start_23f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 3179
    monitor-exit v19
    :try_end_258
    .catchall {:try_start_23f .. :try_end_258} :catchall_3c4

    .line 3180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3181
    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    goto/16 :goto_be

    .line 3142
    .end local v6           #e:Ljava/io/IOException;
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #compressed:Z
    .restart local v7       #headerLen:I
    .restart local v9       #magicBytes:[B
    .restart local v10       #okay:Z
    .restart local v11       #preCompressStream:Ljava/io/InputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/lang/String;
    .restart local v17       #streamHeader:[B
    :cond_270
    :try_start_270
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Wrong header version: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28c
    .catchall {:try_start_270 .. :try_end_28c} :catchall_28e
    .catch Ljava/io/IOException; {:try_start_270 .. :try_end_28c} :catch_1ee

    goto/16 :goto_13b

    .line 3162
    .end local v7           #headerLen:I
    .end local v9           #magicBytes:[B
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #streamHeader:[B
    :catchall_28e
    move-exception v18

    move-object v12, v13

    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    move-object v14, v15

    .end local v3           #buffer:[B
    .end local v4           #compressed:Z
    .end local v10           #okay:Z
    .end local v11           #preCompressStream:Ljava/io/InputStream;
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    :goto_291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3166
    if-eqz v12, :cond_2a6

    :try_start_2a3
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 3167
    :cond_2a6
    if-eqz v14, :cond_2ab

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 3168
    :cond_2ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b4
    .catch Ljava/io/IOException; {:try_start_2a3 .. :try_end_2b4} :catch_39f

    .line 3173
    :goto_2b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3174
    :try_start_2c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    .line 3175
    monitor-exit v19
    :try_end_2d1
    .catchall {:try_start_2c1 .. :try_end_2d1} :catchall_3ad

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3177
    :try_start_2d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V

    .line 3179
    monitor-exit v19
    :try_end_2ed
    .catchall {:try_start_2d8 .. :try_end_2ed} :catchall_3b0

    .line 3180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3181
    const-string v19, "BackupManagerService"

    const-string v20, "Full restore pass complete."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3162
    throw v18

    .line 3143
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #compressed:Z
    .restart local v7       #headerLen:I
    .restart local v9       #magicBytes:[B
    .restart local v10       #okay:Z
    .restart local v11       #preCompressStream:Ljava/io/InputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    .restart local v17       #streamHeader:[B
    :cond_307
    :try_start_307
    const-string v18, "BackupManagerService"

    const-string v19, "Didn\'t read the right header magic"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13b

    .line 3151
    :cond_310
    if-eqz v4, :cond_39c

    new-instance v8, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v8, v11}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3155
    .local v8, in:Ljava/io/InputStream;
    :cond_317
    :goto_317
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->restoreOneFile(Ljava/io/InputStream;[B)Z
    :try_end_31c
    .catchall {:try_start_307 .. :try_end_31c} :catchall_28e
    .catch Ljava/io/IOException; {:try_start_307 .. :try_end_31c} :catch_1ee

    move-result v5

    .line 3156
    .local v5, didRestore:Z
    if-nez v5, :cond_317

    .line 3162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    .line 3163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3166
    if-eqz v13, :cond_334

    :try_start_331
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    .line 3167
    :cond_334
    if-eqz v15, :cond_339

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 3168
    :cond_339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_342
    .catch Ljava/io/IOException; {:try_start_331 .. :try_end_342} :catch_3ef

    .line 3173
    :goto_342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3174
    :try_start_34f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 3175
    monitor-exit v19
    :try_end_35f
    .catchall {:try_start_34f .. :try_end_35f} :catchall_3fd

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3177
    :try_start_366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 3179
    monitor-exit v19
    :try_end_37f
    .catchall {:try_start_366 .. :try_end_37f} :catchall_400

    .line 3180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    .line 3181
    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v12, v13

    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    move-object v14, v15

    .line 3183
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_c1

    .end local v5           #didRestore:Z
    .end local v8           #in:Ljava/io/InputStream;
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    :cond_39c
    move-object v8, v11

    .line 3151
    goto/16 :goto_317

    .line 3169
    .end local v3           #buffer:[B
    .end local v4           #compressed:Z
    .end local v7           #headerLen:I
    .end local v9           #magicBytes:[B
    .end local v10           #okay:Z
    .end local v11           #preCompressStream:Ljava/io/InputStream;
    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .end local v17           #streamHeader:[B
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    :catch_39f
    move-exception v6

    .line 3170
    .restart local v6       #e:Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Close of restore data pipe threw"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b4

    .line 3175
    .end local v6           #e:Ljava/io/IOException;
    :catchall_3ad
    move-exception v18

    :try_start_3ae
    monitor-exit v19
    :try_end_3af
    .catchall {:try_start_3ae .. :try_end_3af} :catchall_3ad

    throw v18

    .line 3179
    :catchall_3b0
    move-exception v18

    :try_start_3b1
    monitor-exit v19
    :try_end_3b2
    .catchall {:try_start_3b1 .. :try_end_3b2} :catchall_3b0

    throw v18

    .line 3169
    .restart local v6       #e:Ljava/io/IOException;
    :catch_3b3
    move-exception v6

    .line 3170
    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21b

    .line 3175
    :catchall_3c1
    move-exception v18

    :try_start_3c2
    monitor-exit v19
    :try_end_3c3
    .catchall {:try_start_3c2 .. :try_end_3c3} :catchall_3c1

    throw v18

    .line 3179
    :catchall_3c4
    move-exception v18

    :try_start_3c5
    monitor-exit v19
    :try_end_3c6
    .catchall {:try_start_3c5 .. :try_end_3c6} :catchall_3c4

    throw v18

    .line 3169
    .end local v6           #e:Ljava/io/IOException;
    :catch_3c7
    move-exception v6

    .line 3170
    .restart local v6       #e:Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6b

    .line 3175
    .end local v6           #e:Ljava/io/IOException;
    :catchall_3d5
    move-exception v18

    :try_start_3d6
    monitor-exit v19
    :try_end_3d7
    .catchall {:try_start_3d6 .. :try_end_3d7} :catchall_3d5

    throw v18

    .line 3179
    :catchall_3d8
    move-exception v18

    :try_start_3d9
    monitor-exit v19
    :try_end_3da
    .catchall {:try_start_3d9 .. :try_end_3da} :catchall_3d8

    throw v18

    .line 3169
    .end local v12           #rawDataIn:Ljava/io/DataInputStream;
    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #compressed:Z
    .restart local v7       #headerLen:I
    .restart local v9       #magicBytes:[B
    .restart local v10       #okay:Z
    .restart local v11       #preCompressStream:Ljava/io/InputStream;
    .restart local v13       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    .restart local v17       #streamHeader:[B
    :catch_3db
    move-exception v6

    .line 3170
    .restart local v6       #e:Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_167

    .line 3175
    .end local v6           #e:Ljava/io/IOException;
    :catchall_3e9
    move-exception v18

    :try_start_3ea
    monitor-exit v19
    :try_end_3eb
    .catchall {:try_start_3ea .. :try_end_3eb} :catchall_3e9

    throw v18

    .line 3179
    :catchall_3ec
    move-exception v18

    :try_start_3ed
    monitor-exit v19
    :try_end_3ee
    .catchall {:try_start_3ed .. :try_end_3ee} :catchall_3ec

    throw v18

    .line 3169
    .restart local v5       #didRestore:Z
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_3ef
    move-exception v6

    .line 3170
    .restart local v6       #e:Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_342

    .line 3175
    .end local v6           #e:Ljava/io/IOException;
    :catchall_3fd
    move-exception v18

    :try_start_3fe
    monitor-exit v19
    :try_end_3ff
    .catchall {:try_start_3fe .. :try_end_3ff} :catchall_3fd

    throw v18

    .line 3179
    :catchall_400
    move-exception v18

    :try_start_401
    monitor-exit v19
    :try_end_402
    .catchall {:try_start_401 .. :try_end_402} :catchall_400

    throw v18

    .line 3162
    .end local v3           #buffer:[B
    .end local v4           #compressed:Z
    .end local v5           #didRestore:Z
    .end local v7           #headerLen:I
    .end local v8           #in:Ljava/io/InputStream;
    .end local v9           #magicBytes:[B
    .end local v10           #okay:Z
    .end local v11           #preCompressStream:Ljava/io/InputStream;
    .end local v13           #rawDataIn:Ljava/io/DataInputStream;
    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .end local v17           #streamHeader:[B
    .restart local v12       #rawDataIn:Ljava/io/DataInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    :catchall_403
    move-exception v18

    goto/16 :goto_291

    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    :catchall_406
    move-exception v18

    move-object v14, v15

    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_291

    .line 3159
    .end local v3           #buffer:[B
    :catch_40a
    move-exception v6

    goto/16 :goto_1f1

    .end local v14           #rawInStream:Ljava/io/FileInputStream;
    .restart local v3       #buffer:[B
    .restart local v15       #rawInStream:Ljava/io/FileInputStream;
    :catch_40d
    move-exception v6

    move-object v14, v15

    .end local v15           #rawInStream:Ljava/io/FileInputStream;
    .restart local v14       #rawInStream:Ljava/io/FileInputStream;
    goto/16 :goto_1f1
.end method

.method sendEndRestore()V
    .registers 4

    .prologue
    .line 4178
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 4180
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4186
    :cond_9
    :goto_9
    return-void

    .line 4181
    :catch_a
    move-exception v0

    .line 4182
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 4166
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 4169
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4175
    :cond_9
    :goto_9
    return-void

    .line 4170
    :catch_a
    move-exception v0

    .line 4171
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendStartRestore()V
    .registers 4

    .prologue
    .line 4155
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 4157
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4163
    :cond_9
    :goto_9
    return-void

    .line 4158
    :catch_a
    move-exception v0

    .line 4159
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method setUpPipes()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3534
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 3535
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .registers 12
    .parameter "size"
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 3740
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 3741
    .local v2, partial:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1e

    .line 3742
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 3743
    .local v1, needed:I
    new-array v0, v1, [B

    .line 3744
    .local v0, buffer:[B
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1f

    .line 3745
    iget-wide v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    .line 3748
    .end local v0           #buffer:[B
    .end local v1           #needed:I
    :cond_1e
    return-void

    .line 3746
    .restart local v0       #buffer:[B
    .restart local v1       #needed:I
    :cond_1f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .parameter "app"

    .prologue
    .line 3552
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v1, :cond_34

    .line 3555
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3560
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_35

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 3562
    const-string v1, "BackupManagerService"

    const-string v2, "Killing host process"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_31} :catch_3d

    .line 3570
    :goto_31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3572
    :cond_34
    return-void

    .line 3565
    :cond_35
    :try_start_35
    const-string v1, "BackupManagerService"

    const-string v2, "Not killing after full restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d

    goto :goto_31

    .line 3567
    :catch_3d
    move-exception v0

    .line 3568
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method tearDownPipes()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3538
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_23

    .line 3540
    :try_start_5
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3541
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 3542
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3543
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_24

    .line 3547
    :goto_21
    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 3549
    :cond_23
    return-void

    .line 3544
    :catch_24
    move-exception v0

    .line 3545
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method