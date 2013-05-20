.class Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequest"
.end annotation


# instance fields
.field final binder:Landroid/os/IBinder;

.field final frequency:I

.field final pid:I

.field final pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/CustomFrequencyManagerService;

.field final type:I

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V
    .registers 10
    .parameter
    .parameter "ty"
    .parameter "fq"
    .parameter "b"
    .parameter "pkg"
    .parameter "u"
    .parameter "p"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    .line 651
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput p2, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    .line 653
    iput p3, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 654
    iput-object p4, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 655
    iput-object p5, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    .line 656
    iput p6, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    .line 657
    iput p7, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    .line 660
    const/4 v1, 0x0

    :try_start_12
    invoke-interface {p4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 664
    :goto_15
    return-void

    .line 661
    :catch_16
    move-exception v0

    .line 662
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binderDied()V

    goto :goto_15
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;
    invoke-static {v0}, Lcom/android/server/CustomFrequencyManagerService;->access$100(Lcom/android/server/CustomFrequencyManagerService;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    move-result-object v1

    monitor-enter v1

    .line 668
    :try_start_7
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 669
    const-string v0, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomFrequencyManager:: binderDied. package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_27
    iget v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    .line 673
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lcom/android/server/CustomFrequencyManagerService;->releaseGPU(Landroid/os/IBinder;)V

    .line 677
    :cond_33
    :goto_33
    monitor-exit v1

    .line 678
    return-void

    .line 674
    :cond_35
    iget v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_33

    .line 675
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lcom/android/server/CustomFrequencyManagerService;->releaseSysBus(Landroid/os/IBinder;)V

    goto :goto_33

    .line 677
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw v0
.end method
