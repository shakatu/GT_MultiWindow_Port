.class Lcom/android/internal/policy/impl/sec/TickerWidget$1;
.super Landroid/os/Handler;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    .line 126
    :goto_5
    return-void

    .line 101
    :pswitch_6
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_NEWS_REFRESH_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showNewsRefreshFailed()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$000(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_5

    .line 105
    :pswitch_13
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_STOCK_REFRESH_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showStockRefreshFailed()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$100(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_5

    .line 109
    :pswitch_20
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_PREVIOUS_NEWS_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousNewsData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$200(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_5

    .line 113
    :pswitch_2d
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_PREVIOUS_STOCK_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousStockData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$300(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_5

    .line 117
    :pswitch_3a
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_FACEBOOK_REFRESH_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showFacebookRefreshFailed()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$400(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_5

    .line 121
    :pswitch_47
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_PREVIOUS_FACEBOOK_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousFacebookData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$500(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_5

    .line 99
    :pswitch_data_54
    .packed-switch 0x12c0
        :pswitch_6
        :pswitch_13
        :pswitch_20
        :pswitch_2d
        :pswitch_3a
        :pswitch_47
    .end packed-switch
.end method
