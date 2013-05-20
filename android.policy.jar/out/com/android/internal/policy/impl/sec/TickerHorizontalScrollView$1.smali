.class Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$1;
.super Landroid/os/Handler;
.source "TickerHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 80
    :goto_5
    return-void

    .line 77
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    #calls: Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->handleScrollAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->access$000(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;)V

    goto :goto_5

    .line 75
    :pswitch_data_c
    .packed-switch 0x12c1
        :pswitch_6
    .end packed-switch
.end method
