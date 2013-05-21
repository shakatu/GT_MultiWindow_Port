.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


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
    .line 449
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 451
    if-nez p1, :cond_23

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->setCurrentStatusBarVisibility(Z)V

    .line 452
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$002(I)I

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setStatusBarHeight(I)V

    .line 457
    :cond_22
    return-void

    .line 451
    :cond_23
    const/4 v0, 0x0

    goto :goto_3
.end method
