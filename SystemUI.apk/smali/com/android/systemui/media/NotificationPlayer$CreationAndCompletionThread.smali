.class final Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreationAndCompletionThread"
.end annotation


# instance fields
.field public mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

.field final synthetic this$0:Lcom/android/systemui/media/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 0
    .parameter
    .parameter "cmd"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 90
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    #setter for: Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v3, v4}, Lcom/android/systemui/media/NotificationPlayer;->access$002(Lcom/android/systemui/media/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .local v0, audioManager:Landroid/media/AudioManager;
    :try_start_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 96
    .local v2, player:Landroid/media/MediaPlayer;
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->stream:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 97
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 98
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 99
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 100
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    if-eqz v3, :cond_3

    .line 103
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/systemui/media/NotificationPlayer$Command;->stream:I

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 110
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 111
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    const v3, 0x3e4ccccd

    const v4, 0x3e4ccccd

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 114
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 115
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    #getter for: Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$100(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 116
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    #getter for: Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$100(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    #setter for: Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v2}, Lcom/android/systemui/media/NotificationPlayer;->access$102(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .end local v2           #player:Landroid/media/MediaPlayer;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    #setter for: Lcom/android/systemui/media/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3, v0}, Lcom/android/systemui/media/NotificationPlayer;->access$302(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 125
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 127
    return-void

    .line 106
    .restart local v2       #player:Landroid/media/MediaPlayer;
    :cond_3
    const/4 v3, 0x0

    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/systemui/media/NotificationPlayer$Command;->stream:I

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 120
    .end local v2           #player:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    #getter for: Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$200(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v5, v5, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method
