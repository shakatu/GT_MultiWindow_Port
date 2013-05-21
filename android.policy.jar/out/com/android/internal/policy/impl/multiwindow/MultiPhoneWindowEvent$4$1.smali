.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;)V
    .registers 2
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 532
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$502(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 534
    return-void
.end method
