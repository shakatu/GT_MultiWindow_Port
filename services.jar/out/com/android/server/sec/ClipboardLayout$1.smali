.class Lcom/android/server/sec/ClipboardLayout$1;
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
    .line 314
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$1;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 319
    :try_start_0
    sget-object v1, Lcom/android/server/sec/ClipboardLayout;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget-object v3, Lcom/android/server/sec/ClipboardLayout;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, v2, v3}, Landroid/sec/clipboard/IClipboardDataUiEvent;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 324
    :goto_b
    return-void

    .line 320
    :catch_c
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method
