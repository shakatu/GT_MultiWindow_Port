.class public Lcom/android/systemui/media/RingtonePlayer;
.super Lcom/android/systemui/SystemUI;
.source "RingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/RingtonePlayer$Client;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "RingtonePlayer"


# instance fields
.field private final mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private mAudioService:Landroid/media/IAudioService;

.field private mCallback:Landroid/media/IRingtonePlayer;

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/media/RingtonePlayer$Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 53
    new-instance v0, Lcom/android/systemui/media/NotificationPlayer;

    const-string v1, "RingtonePlayer"

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 54
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 93
    new-instance v0, Lcom/android/systemui/media/RingtonePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/RingtonePlayer$1;-><init>(Lcom/android/systemui/media/RingtonePlayer;)V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Landroid/media/IRingtonePlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/media/RingtonePlayer;)Lcom/android/systemui/media/NotificationPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 168
    const-string v2, "Clients:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 171
    .local v0, client:Lcom/android/systemui/media/RingtonePlayer$Client;
    const-string v2, "  mToken="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    #getter for: Lcom/android/systemui/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$200(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 173
    const-string v2, " mUri="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    #getter for: Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$100(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    .end local v0           #client:Lcom/android/systemui/media/RingtonePlayer$Client;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 60
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mAudioService:Landroid/media/IAudioService;

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Landroid/media/IRingtonePlayer;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RingtonePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem registering RingtonePlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
