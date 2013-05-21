.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;-><init>(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 512
    const-string v3, "show"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 513
    .local v0, isShow:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-ne v0, v1, :cond_10

    :goto_c
    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)V

    .line 514
    return-void

    :cond_10
    move v1, v2

    .line 513
    goto :goto_c
.end method
