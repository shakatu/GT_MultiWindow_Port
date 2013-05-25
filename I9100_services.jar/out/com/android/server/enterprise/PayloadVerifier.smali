.class public Lcom/android/server/enterprise/PayloadVerifier;
.super Ljava/lang/Object;
.source "PayloadVerifier.java"


# static fields
.field private static final CLASSES_FILE:Ljava/lang/String; = "classes.dex"

.field public static final ENTERPRISE_PRELOAD_APK:Ljava/lang/String; = "com.sec.enterprise.permissions"

.field private static final MANIFEST_FILE:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final PAYLOAD_FILE:Ljava/lang/String; = "sec.android.payload"

.field private static final RESOURCES_FILE:Ljava/lang/String; = "resources.arsc"

.field private static final SPKPath:Ljava/lang/String; = "/data/system/enterprise/vpkp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractPayload(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .parameter "apkPath"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, ipJarFile:Ljava/util/jar/JarFile;
    const/4 v4, 0x0

    .line 143
    .local v4, is:Ljava/io/InputStream;
    :try_start_3
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_67

    .line 144
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .local v3, ipJarFile:Ljava/util/jar/JarFile;
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 145
    .local v5, je:Ljava/util/jar/JarEntry;
    if-nez v5, :cond_44

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_ad

    move-result-object v5

    .line 147
    if-nez v5, :cond_44

    .line 162
    if-eqz v4, :cond_3d

    .line 163
    :try_start_3c
    throw v4
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3d} :catch_96

    .line 168
    :cond_3d
    :goto_3d
    if-eqz v3, :cond_42

    .line 169
    :try_start_3f
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_9b

    :cond_42
    :goto_42
    move-object v2, v3

    .line 174
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .end local v5           #je:Ljava/util/jar/JarEntry;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    :cond_43
    :goto_43
    return-object v7

    .line 151
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v5       #je:Ljava/util/jar/JarEntry;
    :cond_44
    :try_start_44
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v8

    long-to-int v6, v8

    .line 152
    .local v6, size:I
    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 153
    new-array v0, v6, [B

    .line 154
    .local v0, buf:[B
    if-eqz v4, :cond_55

    .line 155
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 157
    :cond_55
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5a} :catch_ad

    .line 162
    if-eqz v4, :cond_5f

    .line 163
    :try_start_5c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_a0

    .line 168
    :cond_5f
    :goto_5f
    if-eqz v3, :cond_64

    .line 169
    :try_start_61
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_a5

    :cond_64
    :goto_64
    move-object v2, v3

    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    move-object v7, v8

    .line 157
    goto :goto_43

    .line 158
    .end local v0           #buf:[B
    .end local v5           #je:Ljava/util/jar/JarEntry;
    .end local v6           #size:I
    :catch_67
    move-exception v1

    .line 159
    .local v1, e:Ljava/io/IOException;
    :goto_68
    :try_start_68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_7b

    .line 162
    if-eqz v4, :cond_70

    .line 163
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_91

    .line 168
    :cond_70
    :goto_70
    if-eqz v2, :cond_43

    .line 169
    :try_start_72
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_43

    .line 170
    :catch_76
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    .line 161
    .end local v1           #e:Ljava/io/IOException;
    :catchall_7b
    move-exception v7

    .line 162
    :goto_7c
    if-eqz v4, :cond_81

    .line 163
    :try_start_7e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_87

    .line 168
    :cond_81
    :goto_81
    if-eqz v2, :cond_86

    .line 169
    :try_start_83
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_8c

    .line 161
    :cond_86
    :goto_86
    throw v7

    .line 164
    :catch_87
    move-exception v1

    .line 165
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    .line 170
    .end local v1           #e:Ljava/io/IOException;
    :catch_8c
    move-exception v1

    .line 171
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_86

    .line 164
    :catch_91
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_70

    .line 164
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v5       #je:Ljava/util/jar/JarEntry;
    :catch_96
    move-exception v1

    .line 165
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    .line 170
    .end local v1           #e:Ljava/io/IOException;
    :catch_9b
    move-exception v1

    .line 171
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 164
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buf:[B
    .restart local v6       #size:I
    :catch_a0
    move-exception v1

    .line 165
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    .line 170
    .end local v1           #e:Ljava/io/IOException;
    :catch_a5
    move-exception v1

    .line 171
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 161
    .end local v0           #buf:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #je:Ljava/util/jar/JarEntry;
    .end local v6           #size:I
    :catchall_aa
    move-exception v7

    move-object v2, v3

    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_7c

    .line 158
    .end local v2           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    :catch_ad
    move-exception v1

    move-object v2, v3

    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v2       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_68
.end method

.method private static getFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 14
    .parameter "fileName"
    .parameter "apkFile"

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, ipJarFile:Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 99
    .local v5, is:Ljava/io/InputStream;
    :try_start_2
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_62

    .line 100
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .local v4, ipJarFile:Ljava/util/jar/JarFile;
    :try_start_7
    invoke-virtual {v4, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 101
    .local v6, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v9

    long-to-int v8, v9

    .line 102
    .local v8, total_size:I
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 104
    new-array v0, v8, [B

    .line 105
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 106
    .local v1, count:I
    const/4 v7, 0x0

    .line 108
    .local v7, read_size:I
    :cond_34
    sub-int v9, v8, v1

    invoke-virtual {v5, v0, v1, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 109
    add-int/2addr v1, v7

    .line 115
    if-gtz v7, :cond_34

    .line 117
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total read size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_56} :catch_ac

    .line 124
    if-eqz v5, :cond_5b

    .line 125
    :try_start_58
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_9f

    .line 130
    :cond_5b
    :goto_5b
    if-eqz v4, :cond_60

    .line 131
    :try_start_5d
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_a4

    :cond_60
    :goto_60
    move-object v3, v4

    .line 136
    .end local v0           #buf:[B
    .end local v1           #count:I
    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .end local v6           #je:Ljava/util/jar/JarEntry;
    .end local v7           #read_size:I
    .end local v8           #total_size:I
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    :goto_61
    return-object v0

    .line 119
    :catch_62
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/Exception;
    :goto_63
    :try_start_63
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 121
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Check private key"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_63 .. :try_end_73} :catchall_7f

    .line 124
    if-eqz v5, :cond_78

    .line 125
    :try_start_75
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_95

    .line 130
    .end local v2           #e:Ljava/lang/Exception;
    :cond_78
    :goto_78
    if-eqz v3, :cond_7d

    .line 131
    :try_start_7a
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_9a

    .line 136
    :cond_7d
    :goto_7d
    const/4 v0, 0x0

    goto :goto_61

    .line 123
    :catchall_7f
    move-exception v9

    .line 124
    :goto_80
    if-eqz v5, :cond_85

    .line 125
    :try_start_82
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_8b

    .line 130
    :cond_85
    :goto_85
    if-eqz v3, :cond_8a

    .line 131
    :try_start_87
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_90

    .line 123
    :cond_8a
    :goto_8a
    throw v9

    .line 126
    :catch_8b
    move-exception v2

    .line 127
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_85

    .line 132
    .end local v2           #e:Ljava/io/IOException;
    :catch_90
    move-exception v2

    .line 133
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8a

    .line 126
    .local v2, e:Ljava/lang/Exception;
    :catch_95
    move-exception v2

    .line 127
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_78

    .line 132
    .end local v2           #e:Ljava/io/IOException;
    :catch_9a
    move-exception v2

    .line 133
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d

    .line 126
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v0       #buf:[B
    .restart local v1       #count:I
    .restart local v4       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v6       #je:Ljava/util/jar/JarEntry;
    .restart local v7       #read_size:I
    .restart local v8       #total_size:I
    :catch_9f
    move-exception v2

    .line 127
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 132
    .end local v2           #e:Ljava/io/IOException;
    :catch_a4
    move-exception v2

    .line 133
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    .line 123
    .end local v0           #buf:[B
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #je:Ljava/util/jar/JarEntry;
    .end local v7           #read_size:I
    .end local v8           #total_size:I
    :catchall_a9
    move-exception v9

    move-object v3, v4

    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_80

    .line 119
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v4       #ipJarFile:Ljava/util/jar/JarFile;
    :catch_ac
    move-exception v2

    move-object v3, v4

    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_63
.end method

.method public static getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "apkPath"

    .prologue
    const/4 v4, -0x1

    .line 330
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 331
    .local v1, end:I
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 333
    .local v2, start:I
    if-eq v1, v4, :cond_18

    if-eq v2, v4, :cond_18

    .line 334
    add-int/lit8 v3, v2, 0x1

    :try_start_13
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 338
    :goto_17
    return-object v3

    .line 336
    :cond_18
    const-string v3, "null"
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_17

    .line 337
    :catch_1b
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "null"

    goto :goto_17
.end method

.method private static declared-synchronized getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "apkPath"

    .prologue
    .line 294
    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, path:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_54

    move-result-object v2

    .line 300
    :goto_50
    monitor-exit v3

    return-object v2

    :cond_52
    const/4 v2, 0x0

    goto :goto_50

    .line 294
    .end local v0           #f:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :catchall_54
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static joinBytes([B[B[B)[B
    .registers 8
    .parameter "bytes1"
    .parameter "bytes2"
    .parameter "bytes3"

    .prologue
    const/4 v4, 0x0

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, outBytes:[B
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    array-length v3, p2

    add-int v0, v2, v3

    .line 88
    .local v0, len:I
    new-array v1, v0, [B

    .line 89
    array-length v2, p0

    invoke-static {p0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    array-length v3, p2

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    return-object v1
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 9
    .parameter "jarFile"
    .parameter "je"
    .parameter "readBuffer"

    .prologue
    const/4 v2, 0x0

    .line 68
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v1, is:Ljava/io/InputStream;
    :cond_a
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    .line 72
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 73
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1b} :catch_4c

    move-result-object v2

    .line 81
    .end local v1           #is:Ljava/io/InputStream;
    :cond_1c
    :goto_1c
    return-object v2

    .line 74
    :catch_1d
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 77
    .end local v0           #e:Ljava/io/IOException;
    :catch_4c
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1c
.end method

.method public static declared-synchronized removeStoredPublicKeyPath(Ljava/lang/String;)V
    .registers 7
    .parameter "apkPath"

    .prologue
    .line 322
    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, path:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_42

    .line 327
    :cond_40
    monitor-exit v3

    return-void

    .line 322
    .end local v0           #f:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "toApkPath"
    .parameter "fromApkPath"

    .prologue
    .line 304
    const-class v5, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v5

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, path:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PATH : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/vpkp/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, to:Ljava/io/File;
    if-eqz v3, :cond_40

    .line 309
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 312
    :cond_40
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_4f

    .line 315
    .local v1, from:Ljava/io/File;
    :try_start_45
    invoke-static {v1, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_4f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4a

    .line 319
    :goto_48
    monitor-exit v5

    return-void

    .line 316
    :catch_4a
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/Exception;
    :try_start_4b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_48

    .line 304
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #from:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #to:Ljava/io/File;
    :catchall_4f
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static verify(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 11
    .parameter "apkPath"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, enterpriseApkPath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 246
    .local v5, storedEnterpriseApkPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 249
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    :try_start_b
    const-string v7, "com.sec.enterprise.permissions"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 253
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_16} :catch_23

    .line 258
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :goto_16
    if-nez v1, :cond_28

    if-nez v5, :cond_28

    .line 259
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Enterprise APK Path is NULL , cannot proceed with payload verification."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v6

    .line 287
    :cond_22
    :goto_22
    return v4

    .line 254
    :catch_23
    move-exception v0

    .line 255
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_16

    .line 264
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_28
    const/4 v4, 0x0

    .line 267
    .local v4, result:Z
    if-eqz v5, :cond_36

    .line 268
    :try_start_2b
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "USING STORED PUBLIC KEY"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    invoke-static {v5, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_52

    move-result v4

    .line 276
    :cond_36
    :goto_36
    if-nez v4, :cond_22

    .line 277
    :try_start_38
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "USING FIXED PUBLIC KEY"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->removeStoredPublicKeyPath(Ljava/lang/String;)V

    .line 279
    invoke-static {v1, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 280
    if-eqz v4, :cond_22

    .line 281
    invoke-static {p0, v1}, Lcom/android/server/enterprise/PayloadVerifier;->setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4b} :catch_4c

    goto :goto_22

    .line 283
    :catch_4c
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v6

    .line 285
    goto :goto_22

    .line 271
    .end local v0           #e:Ljava/lang/Exception;
    :catch_52
    move-exception v0

    .line 272
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method private static verify(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "enterpriseApkPath"
    .parameter "apkPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v6, Ljava/util/jar/JarFile;

    invoke-direct {v6, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 203
    .local v6, jarFile:Ljava/util/jar/JarFile;
    const/16 v11, 0x2000

    new-array v8, v11, [B

    .line 204
    .local v8, readBuffer:[B
    const-string v11, "AndroidManifest.xml"

    invoke-virtual {v6, v11}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v11

    invoke-static {v6, v11, v8}, Lcom/android/server/enterprise/PayloadVerifier;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 207
    .local v1, certs:[Ljava/security/cert/Certificate;
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    .line 209
    if-nez v1, :cond_1a

    .line 210
    const/4 v11, 0x0

    .line 239
    :goto_19
    return v11

    .line 213
    :cond_1a
    const-string v11, "AndroidManifest.xml"

    invoke-static {v11, p1}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 214
    .local v7, manifestData:[B
    const-string v11, "classes.dex"

    invoke-static {v11, p1}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 215
    .local v2, classesData:[B
    const-string v11, "resources.arsc"

    invoke-static {v11, p1}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    .line 216
    .local v9, rsrcData:[B
    invoke-static {v7, v2, v9}, Lcom/android/server/enterprise/PayloadVerifier;->joinBytes([B[B[B)[B

    move-result-object v10

    .line 217
    .local v10, totalData:[B
    const/4 v11, 0x0

    aget-object v0, v1, v11

    .line 218
    .local v0, cert:Ljava/security/cert/Certificate;
    const/4 v5, 0x1

    .line 219
    .local v5, index:I
    const/4 v4, 0x0

    .line 221
    .local v4, extractedb64Signature:Ljava/lang/String;
    :goto_35
    invoke-static {p1, v5}, Lcom/android/server/enterprise/PayloadVerifier;->extractPayload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_da

    .line 222
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11}, Ljava/io/PrintStream;->println()V

    .line 223
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Extracted Payload("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") Size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Extracted Payload("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    const/4 v11, 0x0

    invoke-static {v4, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 227
    .local v3, extractedSignature:[B
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-static {v10, v3, v11}, Lcom/android/server/enterprise/PayloadVerifier;->verify([B[BLjava/security/PublicKey;)Z

    move-result v11

    if-eqz v11, :cond_b8

    .line 228
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Signature Verification SUCCESS for Payload("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    const/4 v11, 0x1

    goto/16 :goto_19

    .line 231
    :cond_b8
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Signature Verification FAILURE for Payload("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    add-int/lit8 v5, v5, 0x1

    .line 234
    goto/16 :goto_35

    .line 236
    .end local v3           #extractedSignature:[B
    :cond_da
    if-nez v4, :cond_e3

    .line 237
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "No more payloads"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    :cond_e3
    const/4 v11, 0x0

    goto/16 :goto_19
.end method

.method private static verify([B[BLjava/security/PublicKey;)Z
    .registers 7
    .parameter "data"
    .parameter "inSignature"
    .parameter "key"

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 184
    .local v1, ret:Z
    :try_start_1
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 185
    .local v2, verify:Ljava/security/Signature;
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 186
    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    .line 187
    invoke-virtual {v2, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_10
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_10} :catch_17
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_10} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_21

    move-result v1

    .line 197
    .end local v2           #verify:Ljava/security/Signature;
    :goto_11
    return v1

    .line 188
    :catch_12
    move-exception v0

    .line 189
    .local v0, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_11

    .line 190
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_17
    move-exception v0

    .line 191
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_11

    .line 192
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1c
    move-exception v0

    .line 193
    .local v0, e:Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_11

    .line 194
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_21
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
