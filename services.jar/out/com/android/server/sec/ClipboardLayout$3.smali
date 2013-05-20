.class Lcom/android/server/sec/ClipboardLayout$3;
.super Ljava/lang/Object;
.source "ClipboardLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClipboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClipboardLayout;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClipboardLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$3;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    .line 369
    iget-object v7, p0, Lcom/android/server/sec/ClipboardLayout$3;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    iput v6, v7, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    .line 373
    :try_start_12
    sget-object v6, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget-object v7, p0, Lcom/android/server/sec/ClipboardLayout$3;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v7, v7, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    invoke-interface {v6, v7}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 375
    .local v1, data:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4b

    .line 377
    move-object v0, v1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v5, v0

    .line 380
    .local v5, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v3, i:Landroid/content/Intent;
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    const-string v6, "title"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v6, "content"

    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 384
    iget-object v6, p0, Lcom/android/server/sec/ClipboardLayout$3;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v6, v6, Lcom/android/server/sec/ClipboardLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 477
    .end local v1           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v3           #i:Landroid/content/Intent;
    .end local v5           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_4a
    :goto_4a
    return-void

    .line 386
    .restart local v1       #data:Landroid/sec/clipboard/data/ClipboardData;
    :cond_4b
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_65

    .line 388
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/sec/ClipboardLayout$3$1;

    invoke-direct {v6, p0, v1}, Lcom/android/server/sec/ClipboardLayout$3$1;-><init>(Lcom/android/server/sec/ClipboardLayout$3;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 459
    .local v4, t:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_5f} :catch_60

    goto :goto_4a

    .line 473
    .end local v1           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v4           #t:Ljava/lang/Thread;
    :catch_60
    move-exception v2

    .line 475
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4a

    .line 461
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #data:Landroid/sec/clipboard/data/ClipboardData;
    :cond_65
    :try_start_65
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_60

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4a

    goto :goto_4a
.end method
