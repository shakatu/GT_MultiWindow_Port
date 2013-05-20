.class Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;
.super Ljava/util/ArrayList;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CustomFrequencyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/CustomFrequencyManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/CustomFrequencyManagerService;Lcom/android/server/CustomFrequencyManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/CustomFrequencyManagerService;)V

    return-void
.end method


# virtual methods
.method addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V
    .registers 5
    .parameter "req"

    .prologue
    .line 690
    iget-object v1, p1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;I)I

    move-result v0

    .line 691
    .local v0, index:I
    if-gez v0, :cond_1a

    .line 692
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 693
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "FrequencyrequestList.addReqest"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_1a
    return-void
.end method

.method getIndex(Landroid/os/IBinder;I)I
    .registers 7
    .parameter "binder"
    .parameter "reqType"

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v1

    .line 713
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_2c

    .line 714
    invoke-virtual {p0, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_29

    invoke-virtual {p0, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    if-ne v2, p2, :cond_29

    .line 715
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 716
    const-string v2, "CustomFrequencyManagerService"

    const-string v3, "FrequencyrequestList.getIndex"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .end local v0           #i:I
    :cond_28
    :goto_28
    return v0

    .line 713
    .restart local v0       #i:I
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 721
    :cond_2c
    const/4 v0, -0x1

    goto :goto_28
.end method

.method getNextMaxGPURequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .registers 10

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 726
    .local v5, size:I
    const/4 v2, -0x1

    .line 727
    .local v2, indexMaxGPURequest:I
    const/4 v3, -0x1

    .line 731
    .local v3, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v5, :cond_29

    .line 732
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    .line 733
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 735
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_24

    .line 736
    move v3, v0

    .line 737
    move v2, v1

    .line 731
    .end local v0           #frequency:I
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 739
    .restart local v0       #frequency:I
    :cond_24
    if-le v0, v3, :cond_21

    .line 740
    move v3, v0

    .line 741
    move v2, v1

    goto :goto_21

    .line 747
    .end local v0           #frequency:I
    :cond_29
    if-ltz v2, :cond_50

    .line 748
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 749
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxGPURequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_49
    invoke-virtual {p0, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 756
    .local v4, maxGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :goto_4f
    return-object v4

    .line 753
    .end local v4           #maxGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_50
    const/4 v4, 0x0

    .restart local v4       #maxGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_4f
.end method

.method getNextMaxSysBusRequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .registers 10

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 761
    .local v5, size:I
    const/4 v2, -0x1

    .line 762
    .local v2, indexMaxSysBusRequest:I
    const/4 v3, -0x1

    .line 766
    .local v3, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v5, :cond_29

    .line 767
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_21

    .line 768
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 770
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_24

    .line 771
    move v3, v0

    .line 772
    move v2, v1

    .line 766
    .end local v0           #frequency:I
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 774
    .restart local v0       #frequency:I
    :cond_24
    if-le v0, v3, :cond_21

    .line 775
    move v3, v0

    .line 776
    move v2, v1

    goto :goto_21

    .line 782
    .end local v0           #frequency:I
    :cond_29
    if-ltz v2, :cond_50

    .line 783
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 784
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxSysBusRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_49
    invoke-virtual {p0, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 790
    .local v4, maxSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :goto_4f
    return-object v4

    .line 788
    .end local v4           #maxSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_50
    const/4 v4, 0x0

    .restart local v4       #maxSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_4f
.end method

.method removeRequest(Landroid/os/IBinder;I)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .registers 6
    .parameter "binder"
    .parameter "type"

    .prologue
    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;I)I

    move-result v0

    .line 701
    .local v0, index:I
    if-ltz v0, :cond_1a

    .line 702
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 703
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "FrequencyrequestList.removeReqest"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 707
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method
