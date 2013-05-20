.class Lcom/android/server/sec/ClipboardLayout$6$4;
.super Ljava/lang/Object;
.source "ClipboardLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClipboardLayout$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClipboardLayout$6;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClipboardLayout$6;)V
    .registers 2
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$6$4;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1198
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$6$4;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v0, v0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1200
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$6$4;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v0, v0, Lcom/android/server/sec/ClipboardLayout$6;->val$vg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1201
    return-void
.end method
