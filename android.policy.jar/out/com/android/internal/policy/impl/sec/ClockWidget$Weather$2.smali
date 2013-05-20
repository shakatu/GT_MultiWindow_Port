.class Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;
.super Landroid/content/BroadcastReceiver;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V
    .registers 2
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 305
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->access$600(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->access$700(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->access$700(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    const-string v1, "ClockWidget"

    const-string v2, "Receice ACTION_WEATHER_SETTING_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2c
    :goto_2c
    return-void

    .line 310
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->access$800(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->access$700(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->access$700(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 313
    const-string v1, "ClockWidget"

    const-string v2, "Receice ACTION_WEATHER_DATE_SYNC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method
