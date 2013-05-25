.class Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiniModeInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1294
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1295
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 36
    .parameter "event"

    .prologue
    .line 1299
    const/4 v5, 0x0

    .line 1301
    .local v5, handled:Z
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v30, v0

    if-eqz v30, :cond_304

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v30

    and-int/lit8 v30, v30, 0x2

    if-eqz v30, :cond_304

    .line 1303
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v13, v0

    .line 1304
    .local v13, motionEvent:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_29

    .line 1317
    :cond_29
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawX()F

    move-result v28

    .line 1318
    .local v28, x:F
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawY()F

    move-result v29

    .line 1319
    .local v29, y:F
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getAction()I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_1aa

    move-result v4

    .line 1321
    .local v4, action:I
    if-eqz v4, :cond_3f

    .line 1506
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1508
    .end local v4           #action:I
    .end local v13           #motionEvent:Landroid/view/MotionEvent;
    .end local v28           #x:F
    .end local v29           #y:F
    :goto_3e
    return-void

    .line 1325
    .restart local v4       #action:I
    .restart local v13       #motionEvent:Landroid/view/MotionEvent;
    .restart local v28       #x:F
    .restart local v29       #y:F
    :cond_3f
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_1aa

    .line 1326
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v28

    move/from16 v2, v29

    #calls: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FF)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;FF)Lcom/android/server/wm/WindowState;

    move-result-object v23

    .line 1332
    .local v23, targetWin:Lcom/android/server/wm/WindowState;
    if-nez v23, :cond_67

    .line 1333
    monitor-exit v31
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_1a7

    .line 1506
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_3e

    .line 1334
    :cond_67
    :try_start_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_ae

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-nez v30, :cond_ae

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManagerPolicy;->closeMultiWindowTrayBar()V

    .line 1340
    :cond_ae
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x834

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_d6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x836

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_345

    .line 1343
    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1347
    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 1348
    .local v27, windows:Ljava/util/ArrayList;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v17, subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    .local v14, revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 1351
    .local v15, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1352
    .local v3, N:I
    const/16 v25, 0x0

    .line 1353
    .local v25, topWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v19, 0x0

    .line 1354
    .local v19, subTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v18, 0x0

    .line 1355
    .local v18, subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v16, 0x0

    .line 1356
    .local v16, subTargetWin:Lcom/android/server/wm/WindowState;
    const/16 v26, 0x0

    .line 1357
    .local v26, win:Lcom/android/server/wm/WindowState;
    add-int/lit8 v10, v3, -0x1

    .local v10, j:I
    :goto_123
    if-ltz v10, :cond_303

    .line 1359
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #win:Lcom/android/server/wm/WindowState;
    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 1361
    .restart local v26       #win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x834

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_158

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x836

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_158

    .line 1357
    add-int/lit8 v10, v10, -0x1

    goto :goto_123

    .line 1367
    :cond_158
    move-object/from16 v25, v26

    .line 1371
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_30d

    .line 1372
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1373
    .local v7, id:I
    if-gez v7, :cond_1b3

    .line 1374
    const-string v30, "WindowManager"

    const-string v32, "    no targetWin in mWindows!!"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const/16 v25, 0x0

    .line 1381
    :goto_177
    if-eqz v25, :cond_303

    .line 1385
    add-int/lit8 v20, v7, -0x1

    .line 1386
    .local v20, subUnderWinIndex:I
    :goto_17b
    if-ltz v20, :cond_193

    .line 1387
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1388
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1b9

    .line 1396
    :cond_193
    :goto_193
    invoke-virtual {v15}, Ljava/util/Stack;->empty()Z

    move-result v30

    if-nez v30, :cond_1c6

    .line 1397
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1398
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_193

    .line 1503
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v10           #j:I
    .end local v14           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v20           #subUnderWinIndex:I
    .end local v23           #targetWin:Lcom/android/server/wm/WindowState;
    .end local v25           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    .end local v27           #windows:Ljava/util/ArrayList;
    :catchall_1a7
    move-exception v30

    monitor-exit v31
    :try_end_1a9
    .catchall {:try_start_67 .. :try_end_1a9} :catchall_1a7

    :try_start_1a9
    throw v30
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1aa

    .line 1506
    .end local v4           #action:I
    .end local v13           #motionEvent:Landroid/view/MotionEvent;
    .end local v28           #x:F
    .end local v29           #y:F
    :catchall_1aa
    move-exception v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v30

    .line 1378
    .restart local v3       #N:I
    .restart local v4       #action:I
    .restart local v6       #i:I
    .restart local v7       #id:I
    .restart local v10       #j:I
    .restart local v13       #motionEvent:Landroid/view/MotionEvent;
    .restart local v14       #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v15       #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    .restart local v17       #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v18       #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v19       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v23       #targetWin:Lcom/android/server/wm/WindowState;
    .restart local v25       #topWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v26       #win:Lcom/android/server/wm/WindowState;
    .restart local v27       #windows:Ljava/util/ArrayList;
    .restart local v28       #x:F
    .restart local v29       #y:F
    :cond_1b3
    :try_start_1b3
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_177

    .line 1391
    .restart local v20       #subUnderWinIndex:I
    :cond_1b9
    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1394
    add-int/lit8 v20, v20, -0x1

    goto :goto_17b

    .line 1400
    :cond_1c6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    sub-int v21, v7, v30

    .line 1403
    .local v21, subUpperWinIndex:I
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    :goto_1d3
    move/from16 v0, v21

    if-gt v0, v3, :cond_1ed

    .line 1407
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1408
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_230

    .line 1417
    :cond_1ed
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "subTargetWinList = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const/4 v11, 0x0

    .local v11, k:I
    :goto_20e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v11, v0, :cond_23f

    .line 1419
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    sub-int v30, v30, v11

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1420
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    add-int/lit8 v11, v11, 0x1

    goto :goto_20e

    .line 1411
    .end local v11           #k:I
    :cond_230
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1412
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d3

    .line 1424
    .restart local v11       #k:I
    :cond_23f
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v24

    .line 1425
    .local v24, topIndex:I
    :goto_247
    move/from16 v0, v24

    if-gt v0, v3, :cond_26a

    .line 1426
    add-int/lit8 v30, v24, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 1427
    .restart local v19       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    if-eqz v19, :cond_26a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_26a

    .line 1428
    move-object/from16 v18, v19

    .line 1429
    add-int/lit8 v24, v24, 0x1

    goto :goto_247

    .line 1434
    :cond_26a
    if-eqz v18, :cond_26e

    .line 1435
    move-object/from16 v25, v18

    .line 1439
    :cond_26e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_2ba

    .line 1440
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "revSubTargetWinList.size() = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1442
    .local v9, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    :goto_29e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2c9

    .line 1443
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 1444
    .local v22, subWinAtList:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_29e

    .line 1447
    .end local v9           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    .end local v22           #subWinAtList:Lcom/android/server/wm/WindowState;
    :cond_2ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1451
    :cond_2c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 1503
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v14           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v20           #subUnderWinIndex:I
    .end local v21           #subUpperWinIndex:I
    .end local v24           #topIndex:I
    .end local v25           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    .end local v27           #windows:Ljava/util/ArrayList;
    :cond_303
    :goto_303
    monitor-exit v31
    :try_end_304
    .catchall {:try_start_1b3 .. :try_end_304} :catchall_1a7

    .line 1506
    .end local v4           #action:I
    .end local v13           #motionEvent:Landroid/view/MotionEvent;
    .end local v23           #targetWin:Lcom/android/server/wm/WindowState;
    .end local v28           #x:F
    .end local v29           #y:F
    :cond_304
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_3e

    .line 1462
    .restart local v3       #N:I
    .restart local v4       #action:I
    .restart local v6       #i:I
    .restart local v10       #j:I
    .restart local v13       #motionEvent:Landroid/view/MotionEvent;
    .restart local v14       #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v15       #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    .restart local v17       #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v18       #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v19       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v23       #targetWin:Lcom/android/server/wm/WindowState;
    .restart local v25       #topWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v26       #win:Lcom/android/server/wm/WindowState;
    .restart local v27       #windows:Ljava/util/ArrayList;
    .restart local v28       #x:F
    .restart local v29       #y:F
    :cond_30d
    :try_start_30d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_303

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_303

    .line 1475
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v10           #j:I
    .end local v14           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v25           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    .end local v27           #windows:Ljava/util/ArrayList;
    :cond_345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v32

    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_3bc

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 1484
    :cond_3bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_303

    .line 1485
    if-eqz v23, :cond_303

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_303

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x20

    if-eqz v30, :cond_423

    const/4 v8, 0x1

    .line 1488
    .local v8, ignoreOtherAppTouched:Z
    :goto_3f7
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_419

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_419

    if-eqz v8, :cond_425

    .line 1489
    :cond_419
    monitor-exit v31
    :try_end_41a
    .catchall {:try_start_30d .. :try_end_41a} :catchall_1a7

    .line 1506
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_3e

    .line 1486
    .end local v8           #ignoreOtherAppTouched:Z
    :cond_423
    const/4 v8, 0x0

    goto :goto_3f7

    .line 1491
    .restart local v8       #ignoreOtherAppTouched:Z
    :cond_425
    :try_start_425
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1100()Z

    move-result v30

    if-eqz v30, :cond_48e

    .line 1492
    const-string v30, "WindowManager"

    const-string v32, "otherAppTouched of WindowManagerService is called and target is different with original."

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetWin >> "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "mCurrentFocus >> "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_48e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v30, v0

    const/16 v32, 0x3e8

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 1498
    .local v12, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_4b7
    .catchall {:try_start_425 .. :try_end_4b7} :catchall_1a7

    goto/16 :goto_303
.end method
