.class Lcom/android/server/ThermistorObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 663
    const-string v2, "frequency"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v18

    .line 664
    .local v18, frequency_eachLevels:[I
    const-string v2, "cpu_max_core"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v15

    .line 665
    .local v15, cpuMaxCore_eachLevels:[I
    const-string v2, "charging_current"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v14

    .line 666
    .local v14, charging_current_eachLevels:[I
    const-string v2, "brightness"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v13

    .line 667
    .local v13, brightness_eachLevels:[Z
    const-string v2, "lcd_fps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v22

    .line 668
    .local v22, lcdFPS_eachLevels:[Z
    const-string v2, "flash_led"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v17

    .line 670
    .local v17, flashLed_eachLevels:[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v2, v2

    add-int/lit8 v23, v2, -0x1

    .line 672
    .local v23, numberOfSIOPLevels:I
    move-object/from16 v0, v18

    array-length v2, v0

    move/from16 v0, v23

    if-ne v2, v0, :cond_5d

    array-length v2, v15

    move/from16 v0, v23

    if-ne v2, v0, :cond_5d

    array-length v2, v14

    move/from16 v0, v23

    if-ne v2, v0, :cond_5d

    array-length v2, v13

    move/from16 v0, v23

    if-ne v2, v0, :cond_5d

    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v23

    if-ne v2, v0, :cond_5d

    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v23

    if-eq v2, v0, :cond_67

    .line 678
    :cond_5d
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mSIOPLevelSetByTestApp : size of setting values is different SIOP Levels"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_66
    return-void

    .line 683
    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$1500(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v2

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v21

    .line 684
    .local v21, lastSIOPLevelName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, v3, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v4}, Lcom/android/server/ThermistorObserver;->access$1500(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ThermistorObserver;->changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V

    .line 687
    const/16 v19, 0x0

    .local v19, i:I
    :goto_8d
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_e1

    .line 688
    add-int/lit8 v20, v19, 0x1

    .line 689
    .local v20, indexToSet:I
    :try_start_95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v0, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-object/from16 v24, v0

    new-instance v2, Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    aget v6, v18, v19

    mul-int/lit16 v6, v6, 0x3e8

    aget v7, v15, v19

    aget v8, v14, v19

    aget-boolean v9, v13, v19

    if-eqz v9, :cond_d8

    const/16 v9, 0xe6

    :goto_c7
    aget-boolean v10, v22, v19

    if-eqz v10, :cond_da

    const/16 v10, 0x28

    :goto_cd
    aget-boolean v11, v17, v19

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZZ)V

    aput-object v2, v24, v20
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_d5} :catch_dd

    .line 687
    add-int/lit8 v19, v19, 0x1

    goto :goto_8d

    .line 689
    :cond_d8
    const/4 v9, -0x1

    goto :goto_c7

    :cond_da
    const/16 v10, 0x3c

    goto :goto_cd

    .line 699
    :catch_dd
    move-exception v16

    .line 700
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 704
    .end local v16           #e:Ljava/lang/Exception;
    .end local v20           #indexToSet:I
    :cond_e1
    const/16 v19, 0x0

    .line 705
    const/16 v19, 0x0

    :goto_e5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_104

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v2, v2, v19

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 711
    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v2, v2

    move/from16 v0, v19

    if-ne v0, v2, :cond_11d

    .line 712
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not found last SIOPLevel"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66

    .line 705
    :cond_11a
    add-int/lit8 v19, v19, 0x1

    goto :goto_e5

    .line 715
    :cond_11d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, v3, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v3, v3, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v4, v4, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ThermistorObserver;->changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, v3, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v3, v3, v19

    #setter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v2, v3}, Lcom/android/server/ThermistorObserver;->access$1502(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$SIOPLevel;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    goto/16 :goto_66
.end method
