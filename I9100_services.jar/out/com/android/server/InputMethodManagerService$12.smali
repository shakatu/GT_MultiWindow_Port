.class Lcom/android/server/InputMethodManagerService$12;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showSIPInformationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 4444
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4447
    :try_start_0
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$200()I

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4448
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/InputMethodManagerService;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->access$2800(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_25

    .line 4452
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$12;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->hideSIPInformationDialog()V

    .line 4453
    return-void

    .line 4450
    :catch_25
    move-exception v0

    goto :goto_1f
.end method
