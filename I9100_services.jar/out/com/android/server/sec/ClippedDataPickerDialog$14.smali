.class Lcom/android/server/sec/ClippedDataPickerDialog$14;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$14;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1754
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dismissClipboardDialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1755
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$14;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1756
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$14;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1758
    :cond_18
    return-void
.end method
