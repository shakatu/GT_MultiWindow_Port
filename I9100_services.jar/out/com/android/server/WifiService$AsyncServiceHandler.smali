.class Lcom/android/server/WifiService$AsyncServiceHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    .line 337
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const-wide/16 v11, 0x3e8

    const v10, 0x25016

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 342
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_1be

    .line 478
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiServicehandler.handleMessage ignoring msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_25
    :goto_25
    return-void

    .line 344
    :sswitch_26
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_3f

    .line 345
    const-string v6, "WifiService"

    const-string v7, "New client listening to asynchronous messages"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mClients:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 348
    :cond_3f
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Client connection failure, error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 353
    :sswitch_5a
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_74

    .line 354
    const-string v6, "WifiService"

    const-string v7, "Send failed, client connection lost"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_66
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mClients:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_25

    .line 356
    :cond_74
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Client connection lost with reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 362
    :sswitch_8f
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 363
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v6, p0, v7}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_25

    .line 367
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_a0
    iget-object v8, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v6, :cond_ca

    :goto_a6
    #setter for: Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z
    invoke-static {v8, v6}, Lcom/android/server/WifiService;->access$302(Lcom/android/server/WifiService;Z)Z

    .line 368
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v6}, Lcom/android/server/WifiService;->access$408(Lcom/android/server/WifiService;)I

    .line 369
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z
    invoke-static {v6}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 370
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->notifyOnDataActivity()V
    invoke-static {v6}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 371
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v6}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v6

    invoke-static {p0, v10, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v11, v12}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_25

    :cond_ca
    move v6, v7

    .line 367
    goto :goto_a6

    .line 377
    :sswitch_cc
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v8}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v8

    if-ne v6, v8, :cond_25

    .line 378
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->notifyOnDataActivity()V
    invoke-static {v6}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 379
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v6}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v6

    invoke-static {p0, v10, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v11, v12}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_25

    .line 387
    :sswitch_ea
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_f4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_10d

    .line 388
    :cond_f4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v2, edmArgs:Landroid/os/Bundle;
    const-string v6, "pid"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_11c

    .line 393
    const-string v7, "config"

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 394
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    .end local v2           #edmArgs:Landroid/os/Bundle;
    :cond_10d
    :goto_10d
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_25

    .line 396
    .restart local v2       #edmArgs:Landroid/os/Bundle;
    :cond_11c
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v6}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 397
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    .line 398
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_13f

    .line 399
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_129
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 400
    .local v5, wifi:Landroid/net/wifi/WifiConfiguration;
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_129

    .line 401
    move-object v1, v5

    .line 402
    const/4 v6, 0x0

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 407
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #wifi:Landroid/net/wifi/WifiConfiguration;
    :cond_13f
    const-string v6, "config"

    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 408
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_10d

    .line 435
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #edmArgs:Landroid/os/Bundle;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_147
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_162

    .line 436
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 440
    .restart local v2       #edmArgs:Landroid/os/Bundle;
    const-string v6, "pid"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    const-string v7, "config"

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 442
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 446
    .end local v2           #edmArgs:Landroid/os/Bundle;
    :cond_162
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_25

    .line 453
    :sswitch_171
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v6, :cond_181

    .line 454
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 457
    .restart local v2       #edmArgs:Landroid/os/Bundle;
    const-string v6, "pid"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    .end local v2           #edmArgs:Landroid/os/Bundle;
    :cond_181
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_25

    .line 466
    :sswitch_190
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_25

    .line 470
    :sswitch_19f
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_25

    .line 474
    :sswitch_1ae
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v6

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_25

    .line 342
    nop

    :sswitch_data_1be
    .sparse-switch
        0x11000 -> :sswitch_26
        0x11001 -> :sswitch_8f
        0x11004 -> :sswitch_5a
        0x25001 -> :sswitch_ea
        0x25004 -> :sswitch_171
        0x25007 -> :sswitch_147
        0x2500a -> :sswitch_190
        0x2500e -> :sswitch_19f
        0x25011 -> :sswitch_1ae
        0x25015 -> :sswitch_a0
        0x25016 -> :sswitch_cc
    .end sparse-switch
.end method
