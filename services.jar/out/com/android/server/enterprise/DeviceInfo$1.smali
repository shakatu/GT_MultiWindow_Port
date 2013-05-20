.class Lcom/android/server/enterprise/DeviceInfo$1;
.super Landroid/os/Handler;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 232
    :goto_5
    return-void

    .line 221
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #calls: Lcom/android/server/enterprise/DeviceInfo;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$000(Lcom/android/server/enterprise/DeviceInfo;)V

    goto :goto_5

    .line 217
    :pswitch_data_c
    .packed-switch 0xc8
        :pswitch_6
    .end packed-switch
.end method
