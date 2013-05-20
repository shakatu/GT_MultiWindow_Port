.class public Lcom/android/server/enterprise/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 81
    iput-object v0, p0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .parameter "FontDir"
    .parameter "folderName"

    .prologue
    .line 286
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    .local v3, newDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, tmp:[Ljava/lang/String;
    if-eqz v4, :cond_21

    .line 294
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    array-length v5, v4

    if-ge v2, v5, :cond_1c

    .line 298
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 304
    .end local v1           #file:Ljava/io/File;
    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 312
    .end local v2           #i:I
    .local v0, bRet:Z
    :goto_20
    return v0

    .line 310
    .end local v0           #bRet:Z
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #bRet:Z
    goto :goto_20
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .registers 6
    .parameter "fontPath"

    .prologue
    .line 328
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 330
    .local v1, run:Ljava/lang/Runtime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 332
    .local v0, myProcess:Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 334
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 336
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2c} :catch_2e

    .line 342
    .end local v0           #myProcess:Ljava/lang/Process;
    .end local v1           #run:Ljava/lang/Runtime;
    :catch_2c
    move-exception v2

    .line 354
    :cond_2d
    :goto_2d
    return-void

    .line 348
    :catch_2e
    move-exception v2

    goto :goto_2d
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 21
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    .line 372
    move-object/from16 v12, p2

    .line 374
    .local v12, myInputStream:Ljava/io/InputStream;
    move-object/from16 v11, p1

    .line 375
    .local v11, myDirectory:Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, directoryName:Ljava/lang/String;
    move-object/from16 v10, p3

    .line 380
    .local v10, myDestination:Ljava/lang/String;
    const-string v1, ""

    .line 386
    .local v1, absolutePath:Ljava/lang/String;
    :try_start_c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    .local v3, dest:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 390
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 394
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 396
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 400
    const/16 v14, 0x400

    new-array v2, v14, [B

    .line 404
    .local v2, b:[B
    const/4 v13, 0x0

    .line 406
    .local v13, read:I
    :goto_33
    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_8f

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v15, 0x0

    invoke-virtual {v14, v2, v15, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_41} :catch_42

    goto :goto_33

    .line 420
    .end local v2           #b:[B
    .end local v3           #dest:Ljava/io/File;
    .end local v13           #read:I
    :catch_42
    move-exception v6

    .line 424
    .local v6, ex:Ljava/lang/Exception;
    :try_start_43
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 428
    .local v8, length:J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_55

    .line 430
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 434
    :cond_55
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_cd

    .line 442
    if-eqz v12, :cond_5d

    .line 444
    :try_start_5a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_109

    .line 456
    :cond_5d
    :goto_5d
    :try_start_5d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_6a

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6a} :catch_113

    .line 470
    :cond_6a
    :goto_6a
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v14, :cond_77

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_77} :catch_11d

    .line 484
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #length:J
    :cond_77
    :goto_77
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 490
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 492
    .restart local v7       #file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 494
    .restart local v8       #length:J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_8e

    .line 496
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 500
    :cond_8e
    return-void

    .line 412
    .end local v7           #file:Ljava/io/File;
    .end local v8           #length:J
    .restart local v2       #b:[B
    .restart local v3       #dest:Ljava/io/File;
    .restart local v13       #read:I
    :cond_8f
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a4
    .catchall {:try_start_8f .. :try_end_a4} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a4} :catch_42

    .line 442
    if-eqz v12, :cond_a9

    .line 444
    :try_start_a6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_123

    .line 456
    :cond_a9
    :goto_a9
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_b6

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b6} :catch_12d

    .line 470
    :cond_b6
    :goto_b6
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v14, :cond_77

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c3} :catch_c4

    goto :goto_77

    .line 476
    :catch_c4
    move-exception v5

    .line 478
    .local v5, e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : bos.close() error"

    .end local v2           #b:[B
    .end local v3           #dest:Ljava/io/File;
    .end local v13           #read:I
    :goto_c9
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 440
    .end local v5           #e:Ljava/io/IOException;
    :catchall_cd
    move-exception v14

    .line 442
    if-eqz v12, :cond_d3

    .line 444
    :try_start_d0
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_ee

    .line 456
    :cond_d3
    :goto_d3
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_e0

    .line 458
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_e0} :catch_f7

    .line 470
    :cond_e0
    :goto_e0
    :try_start_e0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v15, :cond_ed

    .line 472
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_ed} :catch_100

    .line 440
    :cond_ed
    :goto_ed
    throw v14

    .line 448
    :catch_ee
    move-exception v5

    .line 450
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 462
    .end local v5           #e:Ljava/io/IOException;
    :catch_f7
    move-exception v5

    .line 464
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : fOut.close() error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 476
    .end local v5           #e:Ljava/io/IOException;
    :catch_100
    move-exception v5

    .line 478
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : bos.close() error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 448
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #length:J
    :catch_109
    move-exception v5

    .line 450
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : myInputStream.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 462
    .end local v5           #e:Ljava/io/IOException;
    :catch_113
    move-exception v5

    .line 464
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : fOut.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 476
    .end local v5           #e:Ljava/io/IOException;
    :catch_11d
    move-exception v5

    .line 478
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : bos.close() error"

    goto :goto_c9

    .line 448
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #length:J
    .restart local v2       #b:[B
    .restart local v3       #dest:Ljava/io/File;
    .restart local v13       #read:I
    :catch_123
    move-exception v5

    .line 450
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : myInputStream.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 462
    .end local v5           #e:Ljava/io/IOException;
    :catch_12d
    move-exception v5

    .line 464
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : fOut.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 24
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    .line 506
    const/4 v8, 0x0

    .line 508
    .local v8, fOut:Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 510
    .local v15, osw:Ljava/io/OutputStreamWriter;
    const/4 v3, 0x0

    .line 512
    .local v3, bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v14, p2

    .line 514
    .local v14, myInputStream:Ljava/io/InputStream;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 520
    :try_start_23
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v5, dest:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_9f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_108

    .line 524
    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .local v9, fOut:Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_10b

    .line 527
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .local v4, bos:Ljava/io/BufferedOutputStream;
    const/16 v17, 0x400

    :try_start_34
    move/from16 v0, v17

    new-array v2, v0, [B

    .line 530
    .local v2, b:[B
    const/16 v16, 0x0

    .line 532
    .local v16, read:I
    :goto_3a
    invoke-virtual {v14, v2}, Ljava/io/InputStream;->read([B)I

    move-result v16

    if-lez v16, :cond_84

    .line 534
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v4, v2, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_49
    .catchall {:try_start_34 .. :try_end_49} :catchall_104
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_49} :catch_4a

    goto :goto_3a

    .line 546
    .end local v2           #b:[B
    .end local v16           #read:I
    :catch_4a
    move-exception v7

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 550
    .end local v5           #dest:Ljava/io/File;
    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .local v7, ex:Ljava/lang/Exception;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    :goto_4d
    :try_start_4d
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 554
    .local v12, length:J
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-nez v17, :cond_5f

    .line 556
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 560
    :cond_5f
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_4d .. :try_end_62} :catchall_9f

    .line 568
    if-eqz v14, :cond_67

    .line 570
    :try_start_64
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_cb

    .line 582
    :cond_67
    :goto_67
    if-eqz v8, :cond_6c

    .line 584
    :try_start_69
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_d4

    .line 596
    :cond_6c
    :goto_6c
    if-eqz v3, :cond_71

    .line 598
    :try_start_6e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_dd

    .line 616
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #length:J
    :cond_71
    :goto_71
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 618
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 620
    .restart local v12       #length:J
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-nez v17, :cond_83

    .line 622
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 626
    :cond_83
    return-void

    .line 538
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #length:J
    .restart local v2       #b:[B
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #dest:Ljava/io/File;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    .restart local v16       #read:I
    :cond_84
    :try_start_84
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 540
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 542
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_104
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8d} :catch_4a

    .line 568
    if-eqz v14, :cond_92

    .line 570
    :try_start_8f
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_e6

    .line 582
    :cond_92
    :goto_92
    if-eqz v9, :cond_97

    .line 584
    :try_start_94
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_ef

    .line 596
    :cond_97
    :goto_97
    if-eqz v4, :cond_9c

    .line 598
    :try_start_99
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_f8

    :cond_9c
    :goto_9c
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 608
    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    goto :goto_71

    .line 566
    .end local v2           #b:[B
    .end local v5           #dest:Ljava/io/File;
    .end local v16           #read:I
    :catchall_9f
    move-exception v17

    .line 568
    :goto_a0
    if-eqz v14, :cond_a5

    .line 570
    :try_start_a2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_b0

    .line 582
    :cond_a5
    :goto_a5
    if-eqz v8, :cond_aa

    .line 584
    :try_start_a7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_b9

    .line 596
    :cond_aa
    :goto_aa
    if-eqz v3, :cond_af

    .line 598
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_c2

    .line 566
    :cond_af
    :goto_af
    throw v17

    .line 574
    :catch_b0
    move-exception v6

    .line 576
    .local v6, e:Ljava/io/IOException;
    sget-object v18, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v19, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 588
    .end local v6           #e:Ljava/io/IOException;
    :catch_b9
    move-exception v6

    .line 590
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v18, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v19, "copyFontFile : fOut.close() error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 602
    .end local v6           #e:Ljava/io/IOException;
    :catch_c2
    move-exception v6

    .line 604
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v18, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v19, "copyFontFile : bos.close() error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 574
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #ex:Ljava/lang/Exception;
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #length:J
    :catch_cb
    move-exception v6

    .line 576
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 588
    .end local v6           #e:Ljava/io/IOException;
    :catch_d4
    move-exception v6

    .line 590
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : fOut.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 602
    .end local v6           #e:Ljava/io/IOException;
    :catch_dd
    move-exception v6

    .line 604
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : bos.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 574
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #length:J
    .restart local v2       #b:[B
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #dest:Ljava/io/File;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    .restart local v16       #read:I
    :catch_e6
    move-exception v6

    .line 576
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 588
    .end local v6           #e:Ljava/io/IOException;
    :catch_ef
    move-exception v6

    .line 590
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : fOut.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 602
    .end local v6           #e:Ljava/io/IOException;
    :catch_f8
    move-exception v6

    .line 604
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : bos.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 566
    .end local v2           #b:[B
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v16           #read:I
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    :catchall_101
    move-exception v17

    move-object v8, v9

    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    goto :goto_a0

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    :catchall_104
    move-exception v17

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    goto :goto_a0

    .line 546
    .end local v5           #dest:Ljava/io/File;
    :catch_108
    move-exception v7

    goto/16 :goto_4d

    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .restart local v5       #dest:Ljava/io/File;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    :catch_10b
    move-exception v7

    move-object v8, v9

    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    goto/16 :goto_4d
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 16
    .parameter "context"
    .parameter "fontName"

    .prologue
    .line 188
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "createFontDirectory : Start"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v9, 0x0

    .line 191
    .local v9, settingContext:Landroid/content/Context;
    :try_start_8
    const-string v11, "com.android.settings"

    const/4 v12, 0x2

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_3b

    move-result-object v9

    .line 197
    :goto_f
    if-eqz v9, :cond_40

    .line 199
    const-string v11, "fonts"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 200
    .local v6, newFontDir:Ljava/io/File;
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Created"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir object created : "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v1, fontFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, tmp:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_30
    array-length v11, v10

    if-ge v2, v11, :cond_49

    .line 225
    aget-object v11, v10, v2

    invoke-direct {p0, v6, v11}, Lcom/android/server/enterprise/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 192
    .end local v1           #fontFile:Ljava/io/File;
    .end local v2           #i:I
    .end local v6           #newFontDir:Ljava/io/File;
    .end local v10           #tmp:[Ljava/lang/String;
    :catch_3b
    move-exception v0

    .line 194
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 204
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_40
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Not Created"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x0

    .line 270
    :cond_48
    :goto_48
    return-object v1

    .line 233
    .restart local v1       #fontFile:Ljava/io/File;
    .restart local v2       #i:I
    .restart local v6       #newFontDir:Ljava/io/File;
    .restart local v10       #tmp:[Ljava/lang/String;
    :cond_49
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 234
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Created"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_56
    :try_start_56
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 244
    .local v7, run:Ljava/lang/Runtime;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 248
    .local v5, myProcess:Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 250
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v11

    if-eqz v11, :cond_48

    .line 252
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Cannot chmod"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_86} :catch_86
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_86} :catch_97

    .line 258
    .end local v5           #myProcess:Ljava/lang/Process;
    .end local v7           #run:Ljava/lang/Runtime;
    .end local v8           #s:Ljava/lang/String;
    :catch_86
    move-exception v4

    .line 260
    .local v4, ioEx:Ljava/io/IOException;
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "IOException : "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 236
    .end local v4           #ioEx:Ljava/io/IOException;
    :cond_8f
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Not Created"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 264
    :catch_97
    move-exception v3

    .line 266
    .local v3, iEx:Ljava/lang/InterruptedException;
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "InterruptedException : "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "filename"
    .parameter "directory"

    .prologue
    .line 115
    const-string v0, ""

    .line 119
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 127
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 129
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 133
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_5d

    .line 146
    :try_start_42
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_4b

    .line 148
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_ac

    .line 160
    :cond_4b
    :goto_4b
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_54

    .line 162
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_b5

    .line 173
    .end local v1           #dest:Ljava/io/File;
    :cond_54
    :goto_54
    const-string v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 176
    return-void

    .line 136
    :catch_5d
    move-exception v3

    .line 138
    .local v3, ex:Ljava/lang/Exception;
    :try_start_5e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_7d

    .line 146
    :try_start_61
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_6a

    .line 148
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6a} :catch_a3

    .line 160
    :cond_6a
    :goto_6a
    :try_start_6a
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_54

    .line 162
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_73} :catch_74

    goto :goto_54

    .line 166
    :catch_74
    move-exception v2

    .line 168
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    .end local v3           #ex:Ljava/lang/Exception;
    :goto_79
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 144
    .end local v2           #e:Ljava/io/IOException;
    :catchall_7d
    move-exception v4

    .line 146
    :try_start_7e
    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_87

    .line 148
    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_87} :catch_91

    .line 160
    :cond_87
    :goto_87
    :try_start_87
    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_90

    .line 162
    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_90} :catch_9a

    .line 144
    :cond_90
    :goto_90
    throw v4

    .line 152
    :catch_91
    move-exception v2

    .line 154
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 166
    .end local v2           #e:Ljava/io/IOException;
    :catch_9a
    move-exception v2

    .line 168
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 152
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #ex:Ljava/lang/Exception;
    :catch_a3
    move-exception v2

    .line 154
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 152
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #dest:Ljava/io/File;
    :catch_ac
    move-exception v2

    .line 154
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 166
    .end local v2           #e:Ljava/io/IOException;
    :catch_b5
    move-exception v2

    .line 168
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    goto :goto_79
.end method
