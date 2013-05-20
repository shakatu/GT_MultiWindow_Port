.class public Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;
.super Landroid/app/AlertDialog;
.source "SmartSwitchWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SmartSwitchWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerSavingDialog"
.end annotation


# instance fields
.field private iBackgroundColor:I

.field private iCpuPowerSaving:I

.field private iDisplayPowerSaving:I

.field private iOffHapticFeedback:I

.field private iPowerSaving:I

.field private mBackgroundColor:Landroid/widget/CheckedTextView;

.field private mContext:Landroid/content/Context;

.field private mCpuPowerSaving:Landroid/widget/CheckedTextView;

.field private mDisplayPowerSaving:Landroid/widget/CheckedTextView;

.field private mOffHapticFeedback:Landroid/widget/CheckedTextView;

.field final synthetic this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 620
    iput-object p1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    .line 621
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 622
    iput-object p2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    .line 624
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 626
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0400a9

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 628
    .local v1, layout:Landroid/view/View;
    const v2, 0x7f0b01e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    .line 629
    const v2, 0x7f0b01e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    .line 630
    const v2, 0x7f0b01e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    .line 631
    const v2, 0x7f0b01e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    .line 633
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iPowerSaving:I

    .line 639
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_cpu_clock"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iCpuPowerSaving:I

    .line 640
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_display"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iDisplayPowerSaving:I

    .line 641
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_background_colour"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iBackgroundColor:I

    .line 642
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_haptic_feedback"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iOffHapticFeedback:I

    .line 644
    iget-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iCpuPowerSaving:I

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 645
    iget-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iDisplayPowerSaving:I

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 646
    iget-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iBackgroundColor:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 647
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    iget v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iOffHapticFeedback:I

    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 649
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->setView(Landroid/view/View;)V

    .line 650
    const v2, 0x7f09098c

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->setTitle(I)V

    .line 651
    const/4 v2, -0x3

    const v3, 0x104000a

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 652
    return-void

    :cond_0
    move v2, v4

    .line 644
    goto :goto_0

    :cond_1
    move v2, v4

    .line 645
    goto :goto_1

    :cond_2
    move v2, v4

    .line 646
    goto :goto_2

    :cond_3
    move v3, v4

    .line 647
    goto :goto_3
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 656
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_switch"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 657
    .local v4, powersavingState:I
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_cpu_clock"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 658
    .local v1, cpu:I
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_display"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 659
    .local v2, display:I
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_background_colour"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 660
    .local v0, back:I
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_haptic_feedback"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 663
    .local v3, haptic:I
    const-string v6, "SmartSwitchWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cpu : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", display : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", back : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", haptic : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v5, 0x1

    .line 668
    .local v5, retVal:Z
    :cond_0
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    const-string v7, "vibrator"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 675
    :cond_1
    return v5
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 693
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 694
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "psm_cpu_clock"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 695
    const-string v5, "psm_display"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 696
    const-string v5, "psm_background_colour"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 697
    const-string v5, "psm_haptic_feedback"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 700
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f090cc1

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 707
    :goto_4
    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iPowerSaving:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_switch"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iCpuPowerSaving:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_cpu_clock"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iDisplayPowerSaving:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_display"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iBackgroundColor:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_background_colour"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iOffHapticFeedback:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_haptic_feedback"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 712
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "changed"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 716
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 694
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 695
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 696
    goto/16 :goto_2

    :cond_5
    move v2, v4

    .line 697
    goto/16 :goto_3

    .line 704
    :cond_6
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 681
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 682
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 690
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 682
    goto :goto_0

    .line 683
    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 684
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 685
    :cond_4
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 686
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 687
    :cond_6
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4
.end method
