.class public Lcom/android/server/pm/ShutdownThread$Led;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Led"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 829
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Off()V
    .registers 1

    .prologue
    .line 835
    sget v0, Lcom/android/server/pm/ShutdownThreadFeature;->LedOffValue:I

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread$Led;->fileWriteInt(I)V

    .line 836
    return-void
.end method

.method private static On()V
    .registers 1

    .prologue
    .line 831
    sget v0, Lcom/android/server/pm/ShutdownThreadFeature;->LedOnValue:I

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread$Led;->fileWriteInt(I)V

    .line 832
    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 829
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Led;->On()V

    return-void
.end method

.method static synthetic access$400()V
    .registers 0

    .prologue
    .line 829
    invoke-static {}, Lcom/android/server/pm/ShutdownThread$Led;->Off()V

    return-void
.end method

.method private static fileWriteInt(I)V
    .registers 7
    .parameter "value"

    .prologue
    .line 839
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/led/led_pattern"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 840
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_17

    .line 841
    :cond_f
    const-string v4, "LED"

    const-string v5, "!@LED File is not exist"

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_16
    :goto_16
    return-void

    .line 845
    :cond_17
    const/4 v2, 0x0

    .line 847
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_18
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_2f

    .line 848
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_4a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_4d

    .line 855
    if-eqz v3, :cond_2d

    .line 856
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_48

    :cond_2d
    :goto_2d
    move-object v2, v3

    .line 859
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_16

    .line 850
    :catch_2f
    move-exception v0

    .line 851
    .local v0, e:Ljava/io/IOException;
    :goto_30
    :try_start_30
    const-string v4, "LED"

    const-string v5, "!@Exception has raised while file write"

    invoke-static {v4, v5}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3f

    .line 855
    if-eqz v2, :cond_16

    .line 856
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_16

    .line 858
    :catch_3d
    move-exception v4

    goto :goto_16

    .line 854
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3f
    move-exception v4

    .line 855
    :goto_40
    if-eqz v2, :cond_45

    .line 856
    :try_start_42
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 854
    :cond_45
    :goto_45
    throw v4

    .line 858
    :catch_46
    move-exception v5

    goto :goto_45

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_48
    move-exception v4

    goto :goto_2d

    .line 854
    :catchall_4a
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_40

    .line 850
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4d
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_30
.end method
