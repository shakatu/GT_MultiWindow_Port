.class Lcom/android/server/sec/ClipboardLayout$6$1;
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

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClipboardLayout$6;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$6$1;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iput-object p2, p0, Lcom/android/server/sec/ClipboardLayout$6$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$6$1;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v0, v0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$6$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$6$1;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v0, v0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1170
    return-void
.end method
