.class Lcom/android/server/sec/ClipboardLayout$4;
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
    .line 514
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$4;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 520
    .local v3, parent:Landroid/view/View;
    iget-object v4, p0, Lcom/android/server/sec/ClipboardLayout$4;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, v4, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    .line 525
    :try_start_12
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget-object v5, p0, Lcom/android/server/sec/ClipboardLayout$4;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v5, v5, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    invoke-interface {v4, v5}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 526
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v2

    .line 528
    .local v2, isProtected:Z
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_3c

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isProtected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_3c
    if-nez v2, :cond_51

    const/4 v2, 0x1

    .line 532
    :goto_3f
    if-eqz v2, :cond_53

    iget-object v4, p0, Lcom/android/server/sec/ClipboardLayout$4;->this$0:Lcom/android/server/sec/ClipboardLayout;

    #calls: Lcom/android/server/sec/ClipboardLayout;->isProtectedPossible()Z
    invoke-static {v4}, Lcom/android/server/sec/ClipboardLayout;->access$000(Lcom/android/server/sec/ClipboardLayout;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 534
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    const-string v5, "fullProtectedData"

    invoke-interface {v4, v5}, Landroid/sec/clipboard/IClipboardDataUiEvent;->setNotificationMessage(Ljava/lang/String;)V

    .line 560
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #isProtected:Z
    :goto_50
    return-void

    .line 529
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2       #isProtected:Z
    :cond_51
    const/4 v2, 0x0

    goto :goto_3f

    .line 540
    :cond_53
    invoke-virtual {v0, v2}, Landroid/sec/clipboard/data/ClipboardData;->SetProtectState(Z)V

    .line 541
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_76

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after SetProtectState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_76
    if-eqz v2, :cond_9f

    .line 544
    const v4, 0x10807c7

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 548
    :goto_7e
    sget-object v4, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget-object v5, p0, Lcom/android/server/sec/ClipboardLayout$4;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v5, v5, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    invoke-interface {v4, v5, v0}, Landroid/sec/clipboard/data/IClipboardDataList;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 551
    iget-object v4, p0, Lcom/android/server/sec/ClipboardLayout$4;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v5, p0, Lcom/android/server/sec/ClipboardLayout$4;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v5, v5, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    #calls: Lcom/android/server/sec/ClipboardLayout;->changeEditMode(Landroid/view/View;I)V
    invoke-static {v4, v3, v5}, Lcom/android/server/sec/ClipboardLayout;->access$100(Lcom/android/server/sec/ClipboardLayout;Landroid/view/View;I)V

    .line 552
    iget-object v4, p0, Lcom/android/server/sec/ClipboardLayout$4;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v5, p0, Lcom/android/server/sec/ClipboardLayout$4;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v5, v5, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    invoke-virtual {v4, v3, v5}, Lcom/android/server/sec/ClipboardLayout;->showProtectedMarker(Landroid/view/View;I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_99} :catch_9a

    goto :goto_50

    .line 555
    .end local v0           #data:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #isProtected:Z
    :catch_9a
    move-exception v1

    .line 557
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_50

    .line 546
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #data:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2       #isProtected:Z
    :cond_9f
    const v4, 0x10807c5

    :try_start_a2
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a5} :catch_9a

    goto :goto_7e
.end method
