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
    .line 1151
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1152
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1153
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 36
    .parameter "event"

    .prologue
    .line 1157
    const/4 v5, 0x0

    .line 1159
    .local v5, handled:Z
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v30, v0

    if-eqz v30, :cond_2f0

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v30

    and-int/lit8 v30, v30, 0x2

    if-eqz v30, :cond_2f0

    .line 1161
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v12, v0

    .line 1162
    .local v12, motionEvent:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_44

    .line 1166
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    .line 1167
    .local v13, pointerCount:I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v13, v0, :cond_5a

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1175
    .end local v13           #pointerCount:I
    :cond_44
    :goto_44
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getRawX()F

    move-result v28

    .line 1176
    .local v28, x:F
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getRawY()F

    move-result v29

    .line 1177
    .local v29, y:F
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_72

    move-result v4

    .line 1179
    .local v4, action:I
    if-eqz v4, :cond_7b

    .line 1358
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1360
    .end local v4           #action:I
    .end local v12           #motionEvent:Landroid/view/MotionEvent;
    .end local v28           #x:F
    .end local v29           #y:F
    :goto_59
    return-void

    .line 1169
    .restart local v12       #motionEvent:Landroid/view/MotionEvent;
    .restart local v13       #pointerCount:I
    :cond_5a
    const/16 v30, 0x2

    move/from16 v0, v30

    if-le v13, v0, :cond_44

    .line 1170
    :try_start_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_72

    goto :goto_44

    .line 1358
    .end local v12           #motionEvent:Landroid/view/MotionEvent;
    .end local v13           #pointerCount:I
    :catchall_72
    move-exception v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v30

    .line 1183
    .restart local v4       #action:I
    .restart local v12       #motionEvent:Landroid/view/MotionEvent;
    .restart local v28       #x:F
    .restart local v29       #y:F
    :cond_7b
    :try_start_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_88
    .catchall {:try_start_7b .. :try_end_88} :catchall_72

    .line 1184
    :try_start_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v28

    move/from16 v2, v29

    #calls: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FF)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;FF)Lcom/android/server/wm/WindowState;

    move-result-object v23

    .line 1190
    .local v23, targetWin:Lcom/android/server/wm/WindowState;
    if-nez v23, :cond_a3

    .line 1191
    monitor-exit v31
    :try_end_9b
    .catchall {:try_start_88 .. :try_end_9b} :catchall_19c

    .line 1358
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_59

    .line 1194
    :cond_a3
    :try_start_a3
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x834

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_cb

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x836

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_331

    .line 1197
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1198
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

    .line 1201
    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 1202
    .local v27, windows:Ljava/util/ArrayList;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v17, subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v14, revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 1205
    .local v15, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1206
    .local v3, N:I
    const/16 v25, 0x0

    .line 1207
    .local v25, topWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v19, 0x0

    .line 1208
    .local v19, subTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v18, 0x0

    .line 1209
    .local v18, subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v16, 0x0

    .line 1210
    .local v16, subTargetWin:Lcom/android/server/wm/WindowState;
    const/16 v26, 0x0

    .line 1211
    .local v26, win:Lcom/android/server/wm/WindowState;
    add-int/lit8 v9, v3, -0x1

    .local v9, j:I
    :goto_118
    if-ltz v9, :cond_2ef

    .line 1213
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #win:Lcom/android/server/wm/WindowState;
    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 1215
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

    if-eq v0, v1, :cond_14d

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x836

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_14d

    .line 1211
    add-int/lit8 v9, v9, -0x1

    goto :goto_118

    .line 1221
    :cond_14d
    move-object/from16 v25, v26

    .line 1225
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2f9

    .line 1226
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1227
    .local v7, id:I
    if-gez v7, :cond_19f

    .line 1228
    const-string v30, "WindowManager"

    const-string v32, "    no targetWin in mWindows!!"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/16 v25, 0x0

    .line 1235
    :goto_16c
    if-eqz v25, :cond_2ef

    .line 1239
    add-int/lit8 v20, v7, -0x1

    .line 1240
    .local v20, subUnderWinIndex:I
    :goto_170
    if-ltz v20, :cond_188

    .line 1241
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1242
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1a5

    .line 1250
    :cond_188
    :goto_188
    invoke-virtual {v15}, Ljava/util/Stack;->empty()Z

    move-result v30

    if-nez v30, :cond_1b2

    .line 1251
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1252
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_188

    .line 1355
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v9           #j:I
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
    :catchall_19c
    move-exception v30

    monitor-exit v31
    :try_end_19e
    .catchall {:try_start_a3 .. :try_end_19e} :catchall_19c

    :try_start_19e
    throw v30
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_72

    .line 1232
    .restart local v3       #N:I
    .restart local v6       #i:I
    .restart local v7       #id:I
    .restart local v9       #j:I
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
    :cond_19f
    :try_start_19f
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_16c

    .line 1245
    .restart local v20       #subUnderWinIndex:I
    :cond_1a5
    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1248
    add-int/lit8 v20, v20, -0x1

    goto :goto_170

    .line 1254
    :cond_1b2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    sub-int v21, v7, v30

    .line 1257
    .local v21, subUpperWinIndex:I
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    :goto_1bf
    move/from16 v0, v21

    if-gt v0, v3, :cond_1d9

    .line 1261
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1262
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_21c

    .line 1271
    :cond_1d9
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

    .line 1272
    const/4 v10, 0x0

    .local v10, k:I
    :goto_1fa
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v10, v0, :cond_22b

    .line 1273
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    sub-int v30, v30, v10

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1274
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    add-int/lit8 v10, v10, 0x1

    goto :goto_1fa

    .line 1265
    .end local v10           #k:I
    :cond_21c
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1266
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1bf

    .line 1278
    .restart local v10       #k:I
    :cond_22b
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v24

    .line 1279
    .local v24, topIndex:I
    :goto_233
    move/from16 v0, v24

    if-gt v0, v3, :cond_256

    .line 1280
    add-int/lit8 v30, v24, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 1281
    .restart local v19       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    if-eqz v19, :cond_256

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_256

    .line 1282
    move-object/from16 v18, v19

    .line 1283
    add-int/lit8 v24, v24, 0x1

    goto :goto_233

    .line 1288
    :cond_256
    if-eqz v18, :cond_25a

    .line 1289
    move-object/from16 v25, v18

    .line 1293
    :cond_25a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_2a6

    .line 1294
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

    .line 1295
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1296
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    :goto_28a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2b5

    .line 1297
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 1298
    .local v22, subWinAtList:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_28a

    .line 1301
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    .end local v22           #subWinAtList:Lcom/android/server/wm/WindowState;
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1305
    :cond_2b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 1355
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v9           #j:I
    .end local v10           #k:I
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
    :cond_2ef
    :goto_2ef
    monitor-exit v31
    :try_end_2f0
    .catchall {:try_start_19f .. :try_end_2f0} :catchall_19c

    .line 1358
    .end local v4           #action:I
    .end local v12           #motionEvent:Landroid/view/MotionEvent;
    .end local v23           #targetWin:Lcom/android/server/wm/WindowState;
    .end local v28           #x:F
    .end local v29           #y:F
    :cond_2f0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_59

    .line 1316
    .restart local v3       #N:I
    .restart local v4       #action:I
    .restart local v6       #i:I
    .restart local v9       #j:I
    .restart local v12       #motionEvent:Landroid/view/MotionEvent;
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
    :cond_2f9
    :try_start_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2ef

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_2ef

    .line 1329
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v9           #j:I
    .end local v14           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v25           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    .end local v27           #windows:Ljava/util/ArrayList;
    :cond_331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3a8

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

    if-ge v0, v1, :cond_3a8

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 1338
    :cond_3a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2ef

    .line 1339
    if-eqz v23, :cond_2ef

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2ef

    .line 1340
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3e6

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

    if-ne v0, v1, :cond_3f0

    .line 1341
    :cond_3e6
    monitor-exit v31
    :try_end_3e7
    .catchall {:try_start_2f9 .. :try_end_3e7} :catchall_19c

    .line 1358
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_59

    .line 1343
    :cond_3f0
    :try_start_3f0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1000()Z

    move-result v30

    if-eqz v30, :cond_459

    .line 1344
    const-string v30, "WindowManager"

    const-string v32, "otherAppTouched of WindowManagerService is called and target is different with original."

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
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

    .line 1346
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

    .line 1349
    :cond_459
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

    move-result-object v11

    .line 1350
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_482
    .catchall {:try_start_3f0 .. :try_end_482} :catchall_19c

    goto/16 :goto_2ef
.end method
