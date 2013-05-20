.class Lcom/android/server/sec/ClipboardLayout$2;
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
    .line 340
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$2;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 346
    iget-object v2, p0, Lcom/android/server/sec/ClipboardLayout$2;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v2, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    .line 349
    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$2;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v1, v1, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    sget v2, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_21

    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$2;->this$0:Lcom/android/server/sec/ClipboardLayout;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/sec/ClipboardLayout;->isAnimate:Z

    .line 350
    :cond_21
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_41

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_41
    :try_start_41
    sget-object v1, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    iget-object v2, p0, Lcom/android/server/sec/ClipboardLayout$2;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v2, v2, Lcom/android/server/sec/ClipboardLayout;->selectIndex:I

    invoke-interface {v1, v2}, Landroid/sec/clipboard/data/IClipboardDataList;->removeData(I)Z

    .line 354
    sget v1, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/sec/ClipboardLayout;->CHILD_COUNT:I

    .line 355
    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$2;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-virtual {v1}, Lcom/android/server/sec/ClipboardLayout;->startDeleteAnimation()V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_55} :catch_56

    .line 360
    :goto_55
    return-void

    .line 356
    :catch_56
    move-exception v0

    .line 358
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_55
.end method
