.class Lcom/android/server/LightsService$2;
.super Landroid/os/HandlerThread;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 5

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #setter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/server/LightsService;->access$402(Lcom/android/server/LightsService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 300
    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$200(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    .line 301
    :try_start_11
    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$1402(Lcom/android/server/LightsService;Z)Z

    .line 302
    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$200(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 304
    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1200(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    const v3, 0x1110011

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    #setter for: Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$1502(Lcom/android/server/LightsService;Z)Z

    .line 307
    iget-object v1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1500(Lcom/android/server/LightsService;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 310
    :cond_3e
    monitor-exit v2

    .line 311
    return-void

    .line 310
    .end local v0           #resources:Landroid/content/res/Resources;
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_11 .. :try_end_42} :catchall_40

    throw v1
.end method
