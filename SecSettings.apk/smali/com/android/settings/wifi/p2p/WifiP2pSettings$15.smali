.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

.field final synthetic val$mOkButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->val$mOkButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1009
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1011
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    .line 1013
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v4, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1015
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, temp:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1017
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1018
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v4, :cond_4

    .line 1020
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v4, :cond_3

    .line 1021
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1027
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1028
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 1030
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1032
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0903fd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09037b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0905c4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1039
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1023
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1041
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1042
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1043
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    goto/16 :goto_0

    .line 1045
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->val$mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1046
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z
    invoke-static {v1, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    goto/16 :goto_0
.end method
