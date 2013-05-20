.class Lcom/android/server/sec/ClipboardLayout$6$2;
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
    .line 1173
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$6$2;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$6$2;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v0, v0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1177
    return-void
.end method
