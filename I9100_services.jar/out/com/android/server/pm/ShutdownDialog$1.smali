.class Lcom/android/server/pm/ShutdownDialog$1;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownDialog;->prepareSoundThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog$1;->this$0:Lcom/android/server/pm/ShutdownDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog$1;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/pm/ShutdownDialog;->access$600(Lcom/android/server/pm/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_10

    .line 257
    const-string v1, "ShutdownDialog"

    const-string v2, "MediaPlayer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_f
    return-void

    .line 261
    :cond_10
    :try_start_10
    const-string v1, "ShutdownDialog"

    const-string v2, "Playing sound file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog$1;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/pm/ShutdownDialog;->access$600(Lcom/android/server/pm/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 264
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog$1;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/pm/ShutdownDialog;->access$600(Lcom/android/server/pm/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_2e} :catch_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2e} :catch_41

    goto :goto_f

    .line 265
    :catch_2f
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "ShutdownDialog"

    const-string v2, "sound thread IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 268
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_38
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "ShutdownDialog"

    const-string v2, "sound thread InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 271
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_41
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ShutdownDialog"

    const-string v2, "sound thread exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
