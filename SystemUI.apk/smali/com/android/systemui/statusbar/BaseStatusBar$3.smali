.class Lcom/android/systemui/statusbar/BaseStatusBar$3;
.super Landroid/os/Handler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/systemui/statusbar/BaseStatusBar;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$100(Lcom/android/systemui/statusbar/BaseStatusBar;I)V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
