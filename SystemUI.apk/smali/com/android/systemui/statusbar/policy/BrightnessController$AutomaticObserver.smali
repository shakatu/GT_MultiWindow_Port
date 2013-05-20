.class Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutomaticObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 1
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 363
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 364
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 368
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 371
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 373
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$300(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    .local v0, automatic:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 381
    .local v3, toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 393
    .end local v0           #automatic:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    :catch_0
    move-exception v1

    .line 394
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "StatusBar.BrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingNotFoundException occurs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v4

    .line 373
    goto :goto_0

    .line 383
    .restart local v0       #automatic:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useAutoBrightnessDetail:Z

    if-eqz v4, :cond_0

    .line 384
    if-eqz v0, :cond_3

    .line 385
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setVisibility(I)V

    .line 386
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setVisibility(I)V

    goto :goto_2

    .line 388
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setVisibility(I)V

    .line 389
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setVisibility(I)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
