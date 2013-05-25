.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ANIMATOR_WHAT_OFFSET:I = 0x186a0

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final BULK_UPDATE_PARAMETERS:I = 0x19

.field public static final CLEAR_PENDING_ACTIONS:I = 0x186a4

.field public static final DO_ANIMATION_CALLBACK:I = 0x1b

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final HOLD_SCREEN_CHANGED:I = 0xc

.field public static final NOTIFY_SYSTEMUI_UPDATED:I = 0x3e9

.field public static final OTHER_APP_TOUCHED:I = 0x3e8

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SET_DIM_PARAMETERS:I = 0x186a3

.field public static final SET_TRANSPARENT_REGION:I = 0x186a1

.field public static final SET_WALLPAPER_OFFSET:I = 0x186a2

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x1a

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field private mLastReportedHold:Lcom/android/server/wm/Session;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 8276
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8277
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 40
    .parameter "msg"

    .prologue
    .line 8284
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_716

    .line 8829
    :cond_7
    :goto_7
    return-void

    .line 8289
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8290
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    .line 8291
    .local v16, lastFocus:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    .line 8292
    .local v19, newFocus:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2a

    .line 8294
    monitor-exit v3

    goto :goto_7

    .line 8305
    .end local v16           #lastFocus:Lcom/android/server/wm/WindowState;
    .end local v19           #newFocus:Lcom/android/server/wm/WindowState;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw v2

    .line 8296
    .restart local v16       #lastFocus:Lcom/android/server/wm/WindowState;
    .restart local v19       #newFocus:Lcom/android/server/wm/WindowState;
    :cond_2a
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 8299
    if-eqz v19, :cond_49

    if-eqz v16, :cond_49

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_49

    .line 8302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8303
    const/16 v16, 0x0

    .line 8305
    :cond_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_27

    .line 8307
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_9e

    .line 8310
    if-eqz v19, :cond_8e

    .line 8313
    :try_start_52
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V

    .line 8315
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v37, v0

    .line 8316
    .local v37, zoneInfo:I
    if-eqz v37, :cond_87

    .line 8317
    new-instance v21, Landroid/content/Intent;

    const-string v2, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8318
    .local v21, notifyFocusIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_87} :catch_713

    .line 8325
    .end local v21           #notifyFocusIntent:Landroid/content/Intent;
    .end local v37           #zoneInfo:I
    :cond_87
    :goto_87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;)V

    .line 8328
    :cond_8e
    if-eqz v16, :cond_9e

    .line 8331
    :try_start_90
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9e} :catch_710

    .line 8339
    :cond_9e
    :goto_9e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/16 v3, 0x2711

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reloadPointerIcon(IIILandroid/graphics/Point;)V

    goto/16 :goto_7

    .line 8349
    .end local v16           #lastFocus:Lcom/android/server/wm/WindowState;
    .end local v19           #newFocus:Lcom/android/server/wm/WindowState;
    :sswitch_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8350
    :try_start_b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 8351
    .local v17, losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 8352
    monitor-exit v3
    :try_end_cd
    .catchall {:try_start_b9 .. :try_end_cd} :catchall_eb

    .line 8354
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 8355
    .local v11, N:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_d2
    if-ge v15, v11, :cond_7

    .line 8358
    :try_start_d4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_e8} :catch_70d

    .line 8355
    :goto_e8
    add-int/lit8 v15, v15, 0x1

    goto :goto_d2

    .line 8352
    .end local v11           #N:I
    .end local v15           #i:I
    .end local v17           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_eb
    move-exception v2

    :try_start_ec
    monitor-exit v3
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v2

    .line 8366
    :sswitch_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8367
    :try_start_f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    .line 8368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 8369
    monitor-exit v3

    goto/16 :goto_7

    :catchall_106
    move-exception v2

    monitor-exit v3
    :try_end_108
    .catchall {:try_start_f5 .. :try_end_108} :catchall_106

    throw v2

    .line 8373
    :sswitch_109
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/wm/AppWindowToken;

    .line 8374
    .local v36, wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v27, v0

    .line 8376
    .local v27, sd:Lcom/android/server/wm/StartingData;
    if-eqz v27, :cond_7

    .line 8384
    const/16 v31, 0x0

    .line 8386
    .local v31, view:Landroid/view/View;
    :try_start_11b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v27

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v27

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_144} :catch_18a

    move-result-object v31

    .line 8393
    :goto_145
    if-eqz v31, :cond_7

    .line 8394
    const/4 v12, 0x0

    .line 8396
    .local v12, abort:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8397
    :try_start_14f
    move-object/from16 v0, v36

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_15b

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_193

    .line 8400
    :cond_15b
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_16c

    .line 8405
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8406
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8407
    const/4 v12, 0x1

    .line 8417
    :cond_16c
    :goto_16c
    monitor-exit v3
    :try_end_16d
    .catchall {:try_start_14f .. :try_end_16d} :catchall_19a

    .line 8419
    if-eqz v12, :cond_7

    .line 8421
    :try_start_16f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v31

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_17e} :catch_180

    goto/16 :goto_7

    .line 8422
    :catch_180
    move-exception v14

    .line 8423
    .local v14, e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    invoke-static {v2, v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 8389
    .end local v12           #abort:Z
    .end local v14           #e:Ljava/lang/Exception;
    :catch_18a
    move-exception v14

    .line 8390
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when adding starting window"

    invoke-static {v2, v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_145

    .line 8410
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v12       #abort:Z
    :cond_193
    :try_start_193
    move-object/from16 v0, v31

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    goto :goto_16c

    .line 8417
    :catchall_19a
    move-exception v2

    monitor-exit v3
    :try_end_19c
    .catchall {:try_start_193 .. :try_end_19c} :catchall_19a

    throw v2

    .line 8430
    .end local v12           #abort:Z
    .end local v27           #sd:Lcom/android/server/wm/StartingData;
    .end local v31           #view:Landroid/view/View;
    .end local v36           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_19d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/wm/AppWindowToken;

    .line 8431
    .restart local v36       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v30, 0x0

    .line 8432
    .local v30, token:Landroid/os/IBinder;
    const/16 v31, 0x0

    .line 8433
    .restart local v31       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8438
    :try_start_1b0
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1d6

    .line 8439
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v31, v0

    .line 8440
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v30, v0

    .line 8441
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8442
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8443
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8444
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 8446
    :cond_1d6
    monitor-exit v3
    :try_end_1d7
    .catchall {:try_start_1b0 .. :try_end_1d7} :catchall_1f2

    .line 8447
    if-eqz v31, :cond_7

    .line 8449
    :try_start_1d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1e6} :catch_1e8

    goto/16 :goto_7

    .line 8450
    :catch_1e8
    move-exception v14

    .line 8451
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    invoke-static {v2, v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 8446
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_1f2
    move-exception v2

    :try_start_1f3
    monitor-exit v3
    :try_end_1f4
    .catchall {:try_start_1f3 .. :try_end_1f4} :catchall_1f2

    throw v2

    .line 8457
    .end local v30           #token:Landroid/os/IBinder;
    .end local v31           #view:Landroid/view/View;
    .end local v36           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_1f5
    const/16 v30, 0x0

    .line 8458
    .restart local v30       #token:Landroid/os/IBinder;
    const/16 v31, 0x0

    .line 8460
    .restart local v31       #view:Landroid/view/View;
    :goto_1f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8461
    :try_start_200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 8462
    .restart local v11       #N:I
    if-gtz v11, :cond_212

    .line 8463
    monitor-exit v3

    goto/16 :goto_7

    .line 8482
    .end local v11           #N:I
    :catchall_20f
    move-exception v2

    monitor-exit v3
    :try_end_211
    .catchall {:try_start_200 .. :try_end_211} :catchall_20f

    throw v2

    .line 8465
    .restart local v11       #N:I
    :cond_212
    :try_start_212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/wm/AppWindowToken;

    .line 8472
    .restart local v36       #wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_228

    .line 8473
    monitor-exit v3

    goto :goto_1f9

    .line 8476
    :cond_228
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v31, v0

    .line 8477
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v30, v0

    .line 8478
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8479
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8480
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8481
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 8482
    monitor-exit v3
    :try_end_249
    .catchall {:try_start_212 .. :try_end_249} :catchall_20f

    .line 8485
    :try_start_249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_256} :catch_257

    goto :goto_1f9

    .line 8486
    :catch_257
    move-exception v14

    .line 8487
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    invoke-static {v2, v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f9

    .line 8493
    .end local v11           #N:I
    .end local v14           #e:Ljava/lang/Exception;
    .end local v30           #token:Landroid/os/IBinder;
    .end local v31           #view:Landroid/view/View;
    .end local v36           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_260
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/wm/AppWindowToken;

    .line 8498
    .restart local v36       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :try_start_268
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_26f
    .catch Landroid/os/RemoteException; {:try_start_268 .. :try_end_26f} :catch_271

    goto/16 :goto_7

    .line 8499
    :catch_271
    move-exception v2

    goto/16 :goto_7

    .line 8504
    .end local v36           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_274
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/wm/AppWindowToken;

    .line 8506
    .restart local v36       #wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_29a

    const/16 v23, 0x1

    .line 8507
    .local v23, nowVisible:Z
    :goto_284
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_29d

    const/16 v22, 0x1

    .line 8514
    .local v22, nowGone:Z
    :goto_28c
    if-eqz v23, :cond_2a0

    .line 8515
    :try_start_28e
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_7

    .line 8519
    :catch_297
    move-exception v2

    goto/16 :goto_7

    .line 8506
    .end local v22           #nowGone:Z
    .end local v23           #nowVisible:Z
    :cond_29a
    const/16 v23, 0x0

    goto :goto_284

    .line 8507
    .restart local v23       #nowVisible:Z
    :cond_29d
    const/16 v22, 0x0

    goto :goto_28c

    .line 8517
    .restart local v22       #nowGone:Z
    :cond_2a0
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_2a7
    .catch Landroid/os/RemoteException; {:try_start_28e .. :try_end_2a7} :catch_297

    goto/16 :goto_7

    .line 8524
    .end local v22           #nowGone:Z
    .end local v23           #nowVisible:Z
    .end local v36           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_2a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8525
    :try_start_2b0
    const-string v2, "WindowManager"

    const-string v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 8527
    .restart local v15       #i:I
    :cond_2c1
    :goto_2c1
    if-lez v15, :cond_2fa

    .line 8528
    add-int/lit8 v15, v15, -0x1

    .line 8529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/wm/WindowState;

    .line 8530
    .local v32, w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v32

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_2c1

    .line 8531
    const/4 v2, 0x0

    move-object/from16 v0, v32

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 8532
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c1

    .line 8536
    .end local v15           #i:I
    .end local v32           #w:Lcom/android/server/wm/WindowState;
    :catchall_2f7
    move-exception v2

    monitor-exit v3
    :try_end_2f9
    .catchall {:try_start_2b0 .. :try_end_2f9} :catchall_2f7

    throw v2

    .line 8535
    .restart local v15       #i:I
    :cond_2fa
    :try_start_2fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 8536
    monitor-exit v3
    :try_end_302
    .catchall {:try_start_2fa .. :try_end_302} :catchall_2f7

    goto/16 :goto_7

    .line 8543
    .end local v15           #i:I
    :sswitch_304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8544
    :try_start_30b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/wm/Session;

    move-object/from16 v24, v0

    .line 8545
    .local v24, oldHold:Lcom/android/server/wm/Session;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/wm/Session;

    .line 8546
    .local v20, newHold:Lcom/android/server/wm/Session;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/wm/Session;

    .line 8547
    monitor-exit v3
    :try_end_320
    .catchall {:try_start_30b .. :try_end_320} :catchall_351

    .line 8549
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 8551
    if-eqz v24, :cond_339

    .line 8552
    :try_start_328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/server/wm/Session;->mUid:I

    const/4 v4, -0x1

    const-string v5, "window"

    const/4 v6, 0x2

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V

    .line 8556
    :cond_339
    if-eqz v20, :cond_7

    .line 8557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/wm/Session;->mUid:I

    const/4 v4, -0x1

    const-string v5, "window"

    const/4 v6, 0x2

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_34c
    .catch Landroid/os/RemoteException; {:try_start_328 .. :try_end_34c} :catch_34e

    goto/16 :goto_7

    .line 8561
    :catch_34e
    move-exception v2

    goto/16 :goto_7

    .line 8547
    .end local v20           #newHold:Lcom/android/server/wm/Session;
    .end local v24           #oldHold:Lcom/android/server/wm/Session;
    :catchall_351
    move-exception v2

    :try_start_352
    monitor-exit v3
    :try_end_353
    .catchall {:try_start_352 .. :try_end_353} :catchall_351

    throw v2

    .line 8568
    :sswitch_354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8569
    :try_start_35b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_391

    .line 8572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 8573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 8574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 8578
    :cond_391
    monitor-exit v3

    goto/16 :goto_7

    :catchall_394
    move-exception v2

    monitor-exit v3
    :try_end_396
    .catchall {:try_start_35b .. :try_end_396} :catchall_394

    throw v2

    .line 8583
    :sswitch_397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_7

    .line 8593
    :sswitch_3d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8594
    :try_start_3df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-eqz v2, :cond_404

    .line 8597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8599
    monitor-exit v3

    goto/16 :goto_7

    .line 8606
    :catchall_401
    move-exception v2

    monitor-exit v3
    :try_end_403
    .catchall {:try_start_3df .. :try_end_403} :catchall_401

    throw v2

    .line 8603
    :cond_404
    :try_start_404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_40f

    .line 8604
    monitor-exit v3

    goto/16 :goto_7

    .line 8606
    :cond_40f
    monitor-exit v3
    :try_end_410
    .catchall {:try_start_404 .. :try_end_410} :catchall_401

    .line 8607
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_7

    .line 8612
    :sswitch_419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_7

    .line 8617
    :sswitch_422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8618
    :try_start_429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    monitor-enter v4
    :try_end_430
    .catchall {:try_start_429 .. :try_end_430} :catchall_482

    .line 8619
    :try_start_430
    const-string v2, "WindowManager"

    const-string v5, "App freeze timeout expired."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 8621
    .restart local v15       #i:I
    :cond_441
    :goto_441
    if-lez v15, :cond_485

    .line 8622
    add-int/lit8 v15, v15, -0x1

    .line 8623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/AppWindowToken;

    .line 8624
    .local v29, tok:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_441

    .line 8625
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force clearing freeze: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    goto :goto_441

    .line 8629
    .end local v15           #i:I
    .end local v29           #tok:Lcom/android/server/wm/AppWindowToken;
    :catchall_47f
    move-exception v2

    monitor-exit v4
    :try_end_481
    .catchall {:try_start_430 .. :try_end_481} :catchall_47f

    :try_start_481
    throw v2

    .line 8630
    :catchall_482
    move-exception v2

    monitor-exit v3
    :try_end_484
    .catchall {:try_start_481 .. :try_end_484} :catchall_482

    throw v2

    .line 8629
    .restart local v15       #i:I
    :cond_485
    :try_start_485
    monitor-exit v4
    :try_end_486
    .catchall {:try_start_485 .. :try_end_486} :catchall_47f

    .line 8630
    :try_start_486
    monitor-exit v3
    :try_end_487
    .catchall {:try_start_486 .. :try_end_487} :catchall_482

    goto/16 :goto_7

    .line 8635
    .end local v15           #i:I
    :sswitch_489
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_7

    .line 8641
    :sswitch_499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8643
    :try_start_4aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1502(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 8644
    monitor-exit v3
    :try_end_4b3
    .catchall {:try_start_4aa .. :try_end_4b3} :catchall_4bc

    .line 8645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_7

    .line 8644
    :catchall_4bc
    move-exception v2

    :try_start_4bd
    monitor-exit v3
    :try_end_4be
    .catchall {:try_start_4bd .. :try_end_4be} :catchall_4bc

    throw v2

    .line 8651
    :sswitch_4bf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/IBinder;

    .line 8655
    .local v33, win:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8657
    :try_start_4ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_4f9

    .line 8658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    .line 8659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 8660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 8661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 8663
    :cond_4f9
    monitor-exit v3

    goto/16 :goto_7

    :catchall_4fc
    move-exception v2

    monitor-exit v3
    :try_end_4fe
    .catchall {:try_start_4ce .. :try_end_4fe} :catchall_4fc

    throw v2

    .line 8668
    .end local v33           #win:Landroid/os/IBinder;
    :sswitch_4ff
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/IBinder;

    .line 8672
    .restart local v33       #win:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8674
    :try_start_50e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_528

    .line 8675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 8676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 8678
    :cond_528
    monitor-exit v3

    goto/16 :goto_7

    :catchall_52b
    move-exception v2

    monitor-exit v3
    :try_end_52d
    .catchall {:try_start_50e .. :try_end_52d} :catchall_52b

    throw v2

    .line 8683
    .end local v33           #win:Landroid/os/IBinder;
    :sswitch_52e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_7

    .line 8690
    :sswitch_537
    :try_start_537
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/server/wm/WindowState;

    .line 8691
    .local v35, windowState:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_7

    .line 8695
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v18

    .line 8696
    .local v18, mws:Lcom/android/server/am/MultiWindowManagerService;
    if-eqz v18, :cond_7

    .line 8697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v28

    .line 8698
    .local v28, taskId:I
    if-gez v28, :cond_570

    .line 8699
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8700
    const-string v2, "WindowManager"

    const-string v3, "taskId is not exist. do nothing for MW"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 8706
    .end local v18           #mws:Lcom/android/server/am/MultiWindowManagerService;
    .end local v28           #taskId:I
    .end local v35           #windowState:Lcom/android/server/wm/WindowState;
    :catch_56d
    move-exception v2

    goto/16 :goto_7

    .line 8704
    .restart local v18       #mws:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v28       #taskId:I
    .restart local v35       #windowState:Lcom/android/server/wm/WindowState;
    :cond_570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    move/from16 v0, v28

    invoke-interface {v2, v0, v3, v4}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_57d
    .catch Landroid/os/RemoteException; {:try_start_537 .. :try_end_57d} :catch_56d
    .catch Ljava/lang/NullPointerException; {:try_start_537 .. :try_end_57d} :catch_57f

    goto/16 :goto_7

    .line 8707
    .end local v18           #mws:Lcom/android/server/am/MultiWindowManagerService;
    .end local v28           #taskId:I
    .end local v35           #windowState:Lcom/android/server/wm/WindowState;
    :catch_57f
    move-exception v2

    goto/16 :goto_7

    .line 8714
    :sswitch_582
    :try_start_582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getSplitDirection()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getSplitRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->resizeArrangedWindow(IILandroid/graphics/Rect;)V
    :try_end_594
    .catch Landroid/os/RemoteException; {:try_start_582 .. :try_end_594} :catch_596

    goto/16 :goto_7

    .line 8715
    :catch_596
    move-exception v2

    goto/16 :goto_7

    .line 8721
    :sswitch_599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_7

    .line 8727
    :sswitch_5a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8728
    :try_start_5a9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/util/Pair;

    .line 8729
    .local v25, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e1

    .line 8731
    monitor-exit v3

    goto/16 :goto_7

    .line 8733
    .end local v25           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :catchall_5de
    move-exception v2

    monitor-exit v3
    :try_end_5e0
    .catchall {:try_start_5a9 .. :try_end_5e0} :catchall_5de

    throw v2

    .restart local v25       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_5e1
    :try_start_5e1
    monitor-exit v3
    :try_end_5e2
    .catchall {:try_start_5e1 .. :try_end_5e2} :catchall_5de

    .line 8735
    :try_start_5e2
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_5ec
    .catch Landroid/os/RemoteException; {:try_start_5e2 .. :try_end_5ec} :catch_5ee

    goto/16 :goto_7

    .line 8736
    :catch_5ee
    move-exception v2

    goto/16 :goto_7

    .line 8743
    .end local v25           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :sswitch_5f1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8744
    const/4 v13, 0x0

    .line 8747
    .local v13, doRequest:Z
    :try_start_5f9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_60c

    .line 8748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1702(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    .line 8749
    const/4 v13, 0x1

    .line 8751
    :cond_60c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_61e

    .line 8752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    .line 8753
    const/4 v13, 0x1

    .line 8755
    :cond_61e
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_630

    .line 8756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    .line 8757
    const/4 v13, 0x1

    .line 8759
    :cond_630
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_681

    .line 8760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    .line 8767
    :cond_641
    :goto_641
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_650

    .line 8768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 8771
    :cond_650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    .line 8772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingLayoutChanges:I

    if-eqz v2, :cond_666

    .line 8773
    const/4 v13, 0x1

    .line 8776
    :cond_666
    if-eqz v13, :cond_67b

    .line 8777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v4, 0x186a4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 8780
    :cond_67b
    monitor-exit v3

    goto/16 :goto_7

    :catchall_67e
    move-exception v2

    monitor-exit v3
    :try_end_680
    .catchall {:try_start_5f9 .. :try_end_680} :catchall_67e

    throw v2

    .line 8762
    :cond_681
    :try_start_681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    .line 8763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z
    :try_end_690
    .catchall {:try_start_681 .. :try_end_690} :catchall_67e

    if-eqz v2, :cond_641

    .line 8764
    const/4 v13, 0x1

    goto :goto_641

    .line 8785
    .end local v13           #doRequest:Z
    :sswitch_694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(I)V
    invoke-static {v2, v3}, Lcom/android/server/wm/WindowManagerService;->access$1800(Lcom/android/server/wm/WindowManagerService;I)V

    goto/16 :goto_7

    .line 8791
    :sswitch_6a1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/util/Pair;

    .line 8793
    .local v26, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Region;>;"
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/wm/WindowStateAnimator;

    .line 8794
    .local v34, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->setTransparentRegionHint(Landroid/graphics/Region;)V

    goto/16 :goto_7

    .line 8799
    .end local v26           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Region;>;"
    .end local v34           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :sswitch_6be
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/wm/WindowStateAnimator;

    .line 8800
    .restart local v34       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(II)V

    .line 8802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto/16 :goto_7

    .line 8807
    .end local v34           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :sswitch_6dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DimAnimator$Parameters;

    iput-object v2, v3, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 8809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto/16 :goto_7

    .line 8814
    :sswitch_6f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->clearPendingActions()V

    goto/16 :goto_7

    .line 8820
    :sswitch_6fe
    :try_start_6fe
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_708
    .catch Landroid/os/RemoteException; {:try_start_6fe .. :try_end_708} :catch_70a

    goto/16 :goto_7

    .line 8821
    :catch_70a
    move-exception v2

    goto/16 :goto_7

    .line 8359
    .restart local v11       #N:I
    .restart local v15       #i:I
    .restart local v17       #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catch_70d
    move-exception v2

    goto/16 :goto_e8

    .line 8332
    .end local v11           #N:I
    .end local v15           #i:I
    .end local v17           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v16       #lastFocus:Lcom/android/server/wm/WindowState;
    .restart local v19       #newFocus:Lcom/android/server/wm/WindowState;
    :catch_710
    move-exception v2

    goto/16 :goto_9e

    .line 8322
    :catch_713
    move-exception v2

    goto/16 :goto_87

    .line 8284
    :sswitch_data_716
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_b2
        0x4 -> :sswitch_ee
        0x5 -> :sswitch_109
        0x6 -> :sswitch_19d
        0x7 -> :sswitch_1f5
        0x8 -> :sswitch_274
        0x9 -> :sswitch_260
        0xb -> :sswitch_2a9
        0xc -> :sswitch_304
        0xd -> :sswitch_354
        0xe -> :sswitch_397
        0xf -> :sswitch_3d8
        0x10 -> :sswitch_419
        0x11 -> :sswitch_422
        0x12 -> :sswitch_489
        0x13 -> :sswitch_499
        0x14 -> :sswitch_4bf
        0x15 -> :sswitch_4ff
        0x16 -> :sswitch_52e
        0x17 -> :sswitch_599
        0x18 -> :sswitch_5a2
        0x19 -> :sswitch_5f1
        0x1a -> :sswitch_694
        0x1b -> :sswitch_6fe
        0x3e8 -> :sswitch_537
        0x3e9 -> :sswitch_582
        0x186a1 -> :sswitch_6a1
        0x186a2 -> :sswitch_6be
        0x186a3 -> :sswitch_6dc
        0x186a4 -> :sswitch_6f3
    .end sparse-switch
.end method
