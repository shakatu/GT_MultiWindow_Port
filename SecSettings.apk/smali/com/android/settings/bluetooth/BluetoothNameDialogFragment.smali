.class public final Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DBG:Z


# instance fields
.field private isDismissed:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeviceNameEdited:Z

.field private mDeviceNameUpdated:Z

.field mDeviceNameView:Landroid/widget/EditText;

.field mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mOkButton:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 81
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "deviceName"

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 182
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04004c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b00c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 185
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 188
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 193
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$3;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    return-object v1
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 169
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothNameDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting device name to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 171
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 303
    iget-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    if-eqz v6, :cond_1

    .line 305
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 306
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const/4 v3, 0x0

    .line 309
    .local v3, spaceNum:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 310
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, deviceName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 314
    add-int/lit8 v3, v3, 0x1

    .line 312
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 319
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 320
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    if-eqz v7, :cond_4

    if-eq v2, v3, :cond_4

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 327
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 241
    .local v0, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 242
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, deviceName:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 126
    const-string v2, "device_name"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v2, "device_name_edited"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 145
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090098

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$2;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 162
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 132
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 134
    const-string v2, "device_name_edited"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 135
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    if-eqz v2, :cond_0

    .line 136
    const-string v2, "device_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v2, "device_name_edited"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 139
    const-string v2, "device_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 230
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 231
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 232
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 233
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 279
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 283
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 288
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->isDismissed:Z

    if-nez v1, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 251
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 255
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 257
    .end local v1           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->dismiss()V

    .line 258
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->isDismissed:Z

    .line 273
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 267
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 175
    const-string v0, "device_name"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "device_name_edited"

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 331
    return-void
.end method

.method updateDeviceName()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 298
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    return-void
.end method
