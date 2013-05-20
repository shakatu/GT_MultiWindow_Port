.class Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SBeamEnabler"
.end annotation


# instance fields
.field private mReqNfcTurnOn:Z

.field private mSbeam:Landroid/preference/SwitchPreferenceScreen;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mbOn:Z

.field private mbOnLastState:Z

.field final synthetic this$0:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcEnabler;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 6
    .parameter
    .parameter "sbeam"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 418
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    .line 412
    iput-boolean v4, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 413
    iput-boolean v4, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    .line 414
    iput-boolean v4, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    .line 416
    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    .line 419
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    .line 421
    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_sbeam"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    .line 423
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 427
    :cond_0
    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 431
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 434
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "sbeam_last_status"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 436
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "sbeam_last_status"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 437
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 442
    const-string v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.SBeamEnabler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 429
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public changeState(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 499
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_1

    .line 500
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcEnabler"

    const-string v1, "Settings.SBeamEnabler.changeState > there\'s no instance"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    if-ne v4, p1, :cond_3

    .line 506
    const-string v0, "NfcEnabler"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_OFF]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_2

    .line 508
    iput-boolean v3, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    .line 510
    :cond_2
    invoke-virtual {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    goto :goto_0

    .line 511
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_7

    .line 512
    const-string v0, "NfcEnabler"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_ON]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 514
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.SBeamEnabler.changeState > Last : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Req : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    .line 524
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    goto :goto_0

    .line 517
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_6

    .line 518
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 519
    invoke-virtual {p0, v4, v4}, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    goto :goto_1

    .line 521
    :cond_6
    invoke-virtual {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    goto :goto_1

    .line 525
    :cond_7
    const/4 v0, 0x4

    if-ne v0, p1, :cond_8

    .line 526
    const-string v0, "NfcEnabler"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_TURNING_OFF]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 528
    :cond_8
    const/4 v0, 0x2

    if-ne v0, p1, :cond_9

    .line 529
    const-string v0, "NfcEnabler"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_TURNING_ON]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 531
    :cond_9
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 532
    const-string v0, "NfcEnabler"

    const-string v1, "Settings.SBeamEnabler.changeState *****[STATE_CARD_MODE_ON]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {p0, v4, v3}, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->setState(ZZ)V

    goto/16 :goto_0
.end method

.method getSwitch()Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method public onPrefChange(Z)Z
    .locals 8
    .parameter "bOn"

    .prologue
    const v7, 0x7f090216

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 460
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.SBeamEnabler.onPrefChange : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]=>["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    if-ne v2, p1, :cond_2

    .line 495
    :cond_1
    :goto_0
    return v5

    .line 465
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 466
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SBeam_on_off"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    const-string v2, "sbeam_last_status"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 470
    iput-boolean p1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    .line 471
    iput-boolean p1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 472
    if-eqz p1, :cond_1

    .line 473
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 474
    .local v1, nState:I
    sget-boolean v2, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "NfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.SBeamEnabler.onPrefChange :  current state > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_3
    const/4 v2, 0x5

    if-ne v2, v1, :cond_4

    .line 476
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 478
    iput-boolean v5, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    .line 479
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 481
    :cond_4
    if-eq v6, v1, :cond_5

    const/4 v2, 0x2

    if-eq v2, v1, :cond_5

    .line 482
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 484
    iput-boolean v5, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mReqNfcTurnOn:Z

    .line 485
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 488
    :cond_5
    if-ne v6, v1, :cond_1

    .line 489
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto/16 :goto_0
.end method

.method public setOnPrefChangeCallback(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 447
    return-void
.end method

.method setState(ZZ)V
    .locals 4
    .parameter "bEnable"
    .parameter "bOn"

    .prologue
    .line 538
    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.SBeamEnabler.setState > Enable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 540
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 541
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 542
    iput-boolean p2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 543
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 544
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSbeam:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 546
    const-string v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.SBeamEnabler.setState : setChecked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    return-void
.end method

.method public updateLastState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "sbeam_last_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    .line 451
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    .line 452
    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.SBeamEnabler.updateLastState : On >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Last >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$SBeamEnabler;->mbOnLastState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    return-void
.end method
