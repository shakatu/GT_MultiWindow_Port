.class Lcom/android/server/sec/ClippedDataPickerDialog$5;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

.field final synthetic val$doneBtn:Landroid/widget/Button;

.field final synthetic val$saveBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->val$saveBtn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->val$doneBtn:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipLayout:Lcom/android/server/sec/ClipboardLayout;

    sget-boolean v0, Lcom/android/server/sec/ClipboardLayout;->mIsEditMode:Z

    if-eqz v0, :cond_b

    .line 317
    :goto_a
    return-void

    .line 296
    :cond_b
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipLayout:Lcom/android/server/sec/ClipboardLayout;

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipLayout:Lcom/android/server/sec/ClipboardLayout;

    iget-boolean v0, v0, Lcom/android/server/sec/ClipboardLayout;->isSaveMode:Z

    if-nez v0, :cond_37

    move v0, v1

    :goto_18
    iput-boolean v0, v3, Lcom/android/server/sec/ClipboardLayout;->isSaveMode:Z

    .line 298
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipLayout:Lcom/android/server/sec/ClipboardLayout;

    iget-boolean v0, v0, Lcom/android/server/sec/ClipboardLayout;->isSaveMode:Z

    if-eqz v0, :cond_39

    .line 299
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->val$saveBtn:Landroid/widget/Button;

    const v1, 0x1040744

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 301
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->val$doneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    :goto_2f
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipLayout:Lcom/android/server/sec/ClipboardLayout;

    invoke-virtual {v0}, Lcom/android/server/sec/ClipboardLayout;->changeAllSaveMode()V

    goto :goto_a

    :cond_37
    move v0, v2

    .line 296
    goto :goto_18

    .line 304
    :cond_39
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->val$saveBtn:Landroid/widget/Button;

    const v3, 0x1040745

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 306
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->val$doneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipLayout:Lcom/android/server/sec/ClipboardLayout;

    sput-boolean v2, Lcom/android/server/sec/ClipboardLayout;->mIsEditMode:Z

    .line 309
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipLayout:Lcom/android/server/sec/ClipboardLayout;

    iput-boolean v2, v0, Lcom/android/server/sec/ClipboardLayout;->isSaveMode:Z

    .line 310
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$5;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipLayout:Lcom/android/server/sec/ClipboardLayout;

    iput-boolean v2, v0, Lcom/android/server/sec/ClipboardLayout;->mIsProtect:Z

    goto :goto_2f
.end method
