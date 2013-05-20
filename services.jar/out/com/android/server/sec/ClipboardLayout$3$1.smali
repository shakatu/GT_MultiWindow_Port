.class Lcom/android/server/sec/ClipboardLayout$3$1;
.super Ljava/lang/Object;
.source "ClipboardLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClipboardLayout$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClipboardLayout$3;

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClipboardLayout$3;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$3$1;->this$1:Lcom/android/server/sec/ClipboardLayout$3;

    iput-object p2, p0, Lcom/android/server/sec/ClipboardLayout$3$1;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 392
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v2

    .line 393
    .local v2, mFileHelper:Landroid/sec/clipboard/util/FileHelper;
    invoke-virtual {v2}, Landroid/sec/clipboard/util/FileHelper;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$3$1;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 395
    .local v0, bitData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, path:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.clipboardsaveservice.CLIPBOARD_SAVE_RECEIVER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v4, saveIntent:Landroid/content/Intent;
    const-string v5, "copyPath"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v5, "pastePath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Clipboard/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v5, p0, Lcom/android/server/sec/ClipboardLayout$3$1;->this$1:Lcom/android/server/sec/ClipboardLayout$3;

    iget-object v5, v5, Lcom/android/server/sec/ClipboardLayout$3;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v5, v5, Lcom/android/server/sec/ClipboardLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    return-void
.end method
