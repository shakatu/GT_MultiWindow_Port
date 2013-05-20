.class Lcom/android/server/sec/ClipboardLayout$6$3;
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

.field final synthetic val$localBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClipboardLayout$6;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$6$3;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iput-object p2, p0, Lcom/android/server/sec/ClipboardLayout$6$3;->val$localBitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$6$3;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v0, v0, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$6$3;->val$localBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1187
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$6$3;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v0, v0, Lcom/android/server/sec/ClipboardLayout$6;->val$vg:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$6$3;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v1, v1, Lcom/android/server/sec/ClipboardLayout$6;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1188
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$6$3;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v0, v0, Lcom/android/server/sec/ClipboardLayout$6;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$6$3;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget-object v1, v1, Lcom/android/server/sec/ClipboardLayout$6;->val$vg:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/sec/ClipboardLayout$6$3;->this$1:Lcom/android/server/sec/ClipboardLayout$6;

    iget v2, v2, Lcom/android/server/sec/ClipboardLayout$6;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/ClipboardLayout;->showProtectedMarker(Landroid/view/View;I)V

    .line 1189
    return-void
.end method
