.class Lcom/android/internal/policy/impl/PenDetachmentAlert$1;
.super Landroid/os/Handler;
.source "PenDetachmentAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlert;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 129
    :goto_5
    return-void

    .line 124
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->handleAlertTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    goto :goto_5

    .line 122
    :pswitch_data_c
    .packed-switch 0x65
        :pswitch_6
    .end packed-switch
.end method
