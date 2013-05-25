.class public Lcom/android/server/am/MultiWindowManagerService;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static mSelf:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field private SPLIT_ZONE_LEFT:Z

.field private SPLIT_ZONE_RIGHT:Z

.field private mBehaviorBasedLaunch:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentLaunchMode:I

.field private mIgnoreIntentWindowMode:Z

.field private mLastDisplay:Landroid/graphics/Point;

.field private mLock:Ljava/lang/Object;

.field private mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

.field private mSupportAllApps:Z

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportControlbar:Z

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field mWindowGap:I

.field private mWindowInfoMapByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowInfoMapByTaskId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mWindowMinimizedHeight:I

.field mWindowMinimizedWidth:I

.field mbLoadSupportControlbar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    .line 35
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 42
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    .line 57
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 58
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 59
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 60
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 61
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 63
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    .line 836
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    .line 68
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 69
    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 71
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method private calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 5
    .parameter "currentRect"
    .parameter "baseWinInfo"

    .prologue
    .line 505
    if-eqz p2, :cond_2

    .line 506
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 507
    .local v0, baseSize:Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 508
    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #baseSize:Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .line 511
    .restart local v0       #baseSize:Landroid/graphics/Rect;
    :cond_0
    if-eqz v0, :cond_2

    .line 512
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 513
    .local v1, fullscreen:Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 515
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 519
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_1

    .line 520
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 522
    :cond_1
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    .line 523
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 527
    .end local v0           #baseSize:Landroid/graphics/Rect;
    .end local v1           #fullscreen:Landroid/graphics/Point;
    :cond_2
    return-void
.end method

.method private calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;
    .locals 10
    .parameter "current"
    .parameter "prev"
    .parameter "useDefault"

    .prologue
    .line 530
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 531
    .local v4, width:I
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 533
    .local v0, height:I
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 534
    .local v5, winInfo:Landroid/os/Bundle;
    if-nez v5, :cond_0

    .line 535
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 536
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 537
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :cond_0
    if-eqz v5, :cond_3

    .line 540
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 544
    .local v1, lastSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p3, :cond_2

    .line 545
    :cond_1
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 547
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    :cond_2
    if-eqz v1, :cond_3

    .line 548
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 549
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 554
    .end local v1           #lastSize:Landroid/graphics/Rect;
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v9, v0

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 557
    .local v2, rect:Landroid/graphics/Rect;
    if-eqz p2, :cond_4

    .line 558
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    .line 559
    .local v3, topWinInfo:Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 562
    .end local v3           #topWinInfo:Landroid/os/Bundle;
    :cond_4
    return-object v2

    .line 537
    .end local v2           #rect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V
    .locals 15
    .parameter "winInfo"
    .parameter "fullscreen"

    .prologue
    .line 476
    const-string v11, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 477
    .local v3, lastSize:Landroid/graphics/Rect;
    if-nez v3, :cond_0

    .line 478
    const-string v11, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #lastSize:Landroid/graphics/Rect;
    check-cast v3, Landroid/graphics/Rect;

    .line 481
    .restart local v3       #lastSize:Landroid/graphics/Rect;
    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 483
    .local v4, nextPoint:Landroid/graphics/Point;
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    int-to-double v11, v11

    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    div-double v5, v11, v13

    .line 484
    .local v5, relativeRateX:D
    iget v11, v3, Landroid/graphics/Rect;->top:I

    int-to-double v11, v11

    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 486
    .local v7, relativeRateY:D
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-double v11, v11

    mul-double/2addr v11, v5

    double-to-int v1, v11

    .line 487
    .local v1, calculatedReferencePointX:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Point;->y:I

    int-to-double v11, v11

    mul-double/2addr v11, v7

    double-to-int v2, v11

    .line 489
    .local v2, calculatedReferencePointY:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v1, v11

    iput v11, v4, Landroid/graphics/Point;->x:I

    .line 490
    iput v2, v4, Landroid/graphics/Point;->y:I

    .line 493
    iget v11, v4, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int v9, v11, v12

    .line 494
    .local v9, xDiff:I
    iget v11, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v9

    iput v11, v3, Landroid/graphics/Rect;->left:I

    .line 495
    iget v11, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v9

    iput v11, v3, Landroid/graphics/Rect;->right:I

    .line 498
    iget v11, v4, Landroid/graphics/Point;->y:I

    iget v12, v3, Landroid/graphics/Rect;->top:I

    sub-int v10, v11, v12

    .line 499
    .local v10, yDiff:I
    iget v11, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v10

    iput v11, v3, Landroid/graphics/Rect;->top:I

    .line 500
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v10

    iput v11, v3, Landroid/graphics/Rect;->bottom:I

    .line 501
    return-void
.end method

.method private generateMinimizedOffset(I)Landroid/graphics/Point;
    .locals 9
    .parameter "index"

    .prologue
    .line 899
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 900
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 902
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 903
    .local v1, shortSize:I
    :goto_0
    mul-int/lit16 v6, v1, 0xa0

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v6, v7

    .line 908
    .local v2, shortSizeDp:I
    const/16 v6, 0x258

    if-ge v2, v6, :cond_1

    .line 909
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 910
    .local v3, statusbarHeight:I
    const/4 v4, 0x2

    .line 911
    .local v4, x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, p1, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int/2addr v6, v7

    sub-int v5, v6, v3

    .line 922
    .end local v3           #statusbarHeight:I
    .local v5, y:I
    :goto_1
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v6

    .line 902
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 914
    .restart local v1       #shortSize:I
    .restart local v2       #shortSizeDp:I
    :cond_1
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-lt v6, v7, :cond_2

    .line 915
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x3

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 916
    .restart local v4       #x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, p1, 0x3

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int v5, v6, v7

    .restart local v5       #y:I
    goto :goto_1

    .line 918
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_2
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x2

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 919
    .restart local v4       #x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int v5, v6, v7

    .restart local v5       #y:I
    goto :goto_1
.end method

.method private getEmptySplitZone(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v7, 0x20

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, emptyZone:I
    const/4 v3, 0x0

    .line 142
    .local v3, usedZone:I
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 144
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_0

    .line 149
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v3, :cond_3

    .line 150
    xor-int/lit8 v4, v3, -0x1

    and-int/lit8 v0, v4, 0x1e

    .line 151
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 152
    and-int/lit8 v4, v0, 0x6

    if-eqz v4, :cond_4

    .line 154
    and-int/lit8 v0, v0, -0x19

    .line 155
    and-int/lit8 v4, v0, 0x6

    const/4 v6, 0x6

    if-ne v4, v6, :cond_2

    .line 157
    :try_start_0
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x10

    if-ne v4, v6, :cond_2

    .line 159
    :cond_1
    and-int/lit8 v0, v0, -0x5

    .line 168
    :cond_2
    :goto_1
    monitor-exit v5

    .line 170
    :cond_3
    return v0

    .line 161
    :cond_4
    and-int/lit8 v4, v0, 0x18

    const/16 v6, 0x18

    if-ne v4, v6, :cond_2

    .line 164
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_5

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_2

    .line 166
    :cond_5
    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method


# virtual methods
.method public addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 17
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 260
    .local v10, taskId:I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 261
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 262
    .local v4, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 264
    .local v6, realActivity:Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 266
    .local v12, topWinInfo:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 267
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 268
    .local v11, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_0

    .line 269
    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v12

    .line 273
    .end local v11           #top:Lcom/android/server/am/ActivityRecord;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 274
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    .line 276
    .local v13, winInfodefault:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0x4000

    if-nez v14, :cond_1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v14

    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    .line 278
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0xff

    if-eqz v14, :cond_3

    const/4 v8, 0x1

    .line 279
    .local v8, replace:Z
    :goto_0
    if-nez v8, :cond_1

    .line 280
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, -0x100

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 281
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v16

    or-int v14, v14, v16

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 285
    .end local v8           #replace:Z
    :cond_1
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0xff

    if-eqz v14, :cond_4

    .line 286
    const-string v14, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 295
    .local v9, taskBundle:Landroid/os/Bundle;
    if-eqz v9, :cond_5

    .line 296
    invoke-virtual {v9, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 301
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 302
    .local v3, cmpBundle:Landroid/os/Bundle;
    if-eqz v3, :cond_6

    .line 303
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 307
    :goto_3
    monitor-exit v15

    .line 308
    return-void

    .line 278
    .end local v3           #cmpBundle:Landroid/os/Bundle;
    .end local v9           #taskBundle:Landroid/os/Bundle;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 287
    :cond_4
    invoke-virtual {v5}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v14

    if-nez v14, :cond_2

    .line 290
    const-string v14, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 291
    .local v7, rect:Landroid/graphics/Rect;
    const-string v14, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v13, v14, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 307
    .end local v7           #rect:Landroid/graphics/Rect;
    .end local v13           #winInfodefault:Landroid/os/Bundle;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 298
    .restart local v9       #taskBundle:Landroid/os/Bundle;
    .restart local v13       #winInfodefault:Landroid/os/Bundle;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 305
    .restart local v3       #cmpBundle:Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v14, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .locals 11
    .parameter "windowMode"
    .parameter "winInfo"

    .prologue
    .line 862
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 863
    :try_start_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    .line 864
    .local v1, mode:I
    const/high16 v5, 0x100

    if-ne v1, v5, :cond_0

    .line 865
    monitor-exit v6

    .line 896
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 869
    .local v3, options:I
    and-int/lit16 v5, p1, 0xff

    if-eqz v5, :cond_1

    .line 870
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 874
    :cond_1
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v7, -0x1

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 875
    .local v4, slot:I
    const/high16 v5, 0x10

    and-int/2addr v5, v3

    if-eqz v5, :cond_3

    .line 876
    if-gez v4, :cond_2

    .line 877
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v4

    .line 878
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 879
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 884
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v2

    .line 885
    .local v2, offset:Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/2addr v9, v10

    invoke-direct {v0, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 887
    .local v0, minimizedSize:Landroid/graphics/Rect;
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 895
    .end local v0           #minimizedSize:Landroid/graphics/Rect;
    .end local v2           #offset:Landroid/graphics/Point;
    :goto_2
    monitor-exit v6

    goto :goto_0

    .end local v1           #mode:I
    .end local v3           #options:I
    .end local v4           #slot:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 881
    .restart local v1       #mode:I
    .restart local v3       #options:I
    .restart local v4       #slot:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    goto :goto_1

    .line 889
    :cond_3
    if-gez v4, :cond_4

    .line 890
    monitor-exit v6

    goto :goto_0

    .line 892
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 893
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public arrangeWindowInfos(IILjava/util/ArrayList;)V
    .locals 29
    .parameter "changes"
    .parameter "mode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p3, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 587
    :try_start_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 588
    .local v8, fullscreen:Landroid/graphics/Point;
    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 591
    .local v4, N:I
    const/4 v7, 0x0

    .line 592
    .local v7, divideCount:I
    const/4 v10, 0x0

    .line 594
    .local v10, j:I
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_1

    .line 595
    const/4 v11, 0x0

    .local v11, k:I
    :goto_0
    if-ge v11, v4, :cond_0

    .line 596
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 597
    .local v18, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 598
    .local v22, winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 599
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 595
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 601
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->clearSlots()V

    .line 603
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v4, :cond_3

    .line 604
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 605
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 606
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v14

    .line 607
    .local v14, offset:Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 609
    .local v13, minimizedSize:Landroid/graphics/Rect;
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 611
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 603
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 614
    .end local v9           #i:I
    .end local v11           #k:I
    .end local v13           #minimizedSize:Landroid/graphics/Rect;
    .end local v14           #offset:Landroid/graphics/Point;
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_1
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 617
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    if-ge v9, v4, :cond_3

    .line 618
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 619
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 620
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/16 v25, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 621
    .local v20, slot:I
    if-ltz v20, :cond_2

    .line 622
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v14

    .line 623
    .restart local v14       #offset:Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 625
    .restart local v13       #minimizedSize:Landroid/graphics/Rect;
    const-string v23, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 617
    .end local v13           #minimizedSize:Landroid/graphics/Rect;
    .end local v14           #offset:Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 630
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v20           #slot:I
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_3
    const/16 v16, 0x0

    .line 631
    .local v16, prev:Lcom/android/server/am/ActivityRecord;
    move/from16 v0, p2

    and-int/lit16 v0, v0, -0x401

    move/from16 p2, v0

    .line 635
    const/16 v21, 0x3c

    .line 637
    .local v21, splitModeMask:I
    and-int v23, p2, v21

    if-eqz v23, :cond_8

    .line 638
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v5, arrangedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_3
    if-ltz v9, :cond_7

    .line 640
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 641
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 643
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v15

    .line 644
    .local v15, option:I
    const/high16 v23, 0x80

    and-int v23, v23, v15

    if-nez v23, :cond_4

    const-string v23, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 646
    :cond_4
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 649
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 652
    .end local v15           #option:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 653
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 656
    .end local v5           #arrangedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v9           #i:I
    :cond_8
    sparse-switch p2, :sswitch_data_0

    .line 829
    :cond_9
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 830
    new-instance v23, Landroid/graphics/Point;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 832
    :cond_a
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 833
    monitor-exit v24

    .line 834
    return-void

    .line 658
    :sswitch_0
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_9

    .line 659
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 660
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 662
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 663
    .local v12, lastSize:Landroid/graphics/Rect;
    const-string v23, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 665
    .local v6, defaultSize:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v15

    .line 666
    .restart local v15       #option:I
    const/high16 v23, 0x80

    and-int v23, v23, v15

    if-nez v23, :cond_b

    const-string v23, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 668
    :cond_b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 678
    :cond_c
    :goto_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 658
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 670
    :cond_d
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_e

    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    goto :goto_5

    .line 833
    .end local v4           #N:I
    .end local v6           #defaultSize:Landroid/graphics/Rect;
    .end local v7           #divideCount:I
    .end local v8           #fullscreen:Landroid/graphics/Point;
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v12           #lastSize:Landroid/graphics/Rect;
    .end local v15           #option:I
    .end local v16           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v21           #splitModeMask:I
    .end local v22           #winInfo:Landroid/os/Bundle;
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 674
    .restart local v4       #N:I
    .restart local v6       #defaultSize:Landroid/graphics/Rect;
    .restart local v7       #divideCount:I
    .restart local v8       #fullscreen:Landroid/graphics/Point;
    .restart local v9       #i:I
    .restart local v10       #j:I
    .restart local v12       #lastSize:Landroid/graphics/Rect;
    .restart local v15       #option:I
    .restart local v16       #prev:Lcom/android/server/am/ActivityRecord;
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v21       #splitModeMask:I
    .restart local v22       #winInfo:Landroid/os/Bundle;
    :cond_e
    :try_start_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 675
    const-string v25, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 676
    move-object/from16 v16, v18

    goto :goto_5

    .line 675
    :cond_f
    const/16 v23, 0x0

    goto :goto_6

    .line 682
    .end local v6           #defaultSize:Landroid/graphics/Rect;
    .end local v9           #i:I
    .end local v12           #lastSize:Landroid/graphics/Rect;
    .end local v15           #option:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_1
    const/4 v7, 0x2

    .line 683
    rem-int/lit8 v23, v4, 0x2

    if-nez v23, :cond_11

    const/4 v10, 0x1

    .line 684
    :goto_7
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_8
    if-ltz v9, :cond_9

    .line 685
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 686
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 688
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_10

    .line 689
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 690
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    rem-int v23, v10, v7

    if-nez v23, :cond_12

    const/16 v23, 0x6

    :goto_9
    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 693
    :cond_10
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 695
    add-int/lit8 v23, v10, 0x1

    rem-int v10, v23, v7

    .line 684
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 683
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_11
    const/4 v10, 0x0

    goto :goto_7

    .line 690
    .restart local v9       #i:I
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #winInfo:Landroid/os/Bundle;
    :cond_12
    const/16 v23, 0x18

    goto :goto_9

    .line 699
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_2
    const/4 v7, 0x3

    .line 700
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_a
    if-ltz v9, :cond_9

    .line 701
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 702
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 704
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_13

    .line 705
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 706
    rem-int v10, v9, v7

    .line 707
    rem-int v23, v10, v7

    if-nez v23, :cond_14

    .line 708
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x6

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 715
    :cond_13
    :goto_b
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 700
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    .line 709
    :cond_14
    rem-int v23, v10, v7

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 710
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_b

    .line 712
    :cond_15
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_b

    .line 719
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_3
    const/4 v7, 0x3

    .line 720
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_c
    if-ltz v9, :cond_9

    .line 721
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 722
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 724
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_16

    .line 725
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 726
    rem-int v10, v9, v7

    .line 727
    rem-int v23, v10, v7

    if-nez v23, :cond_17

    .line 728
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 735
    :cond_16
    :goto_d
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 720
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    .line 729
    :cond_17
    rem-int v23, v10, v7

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 730
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_d

    .line 732
    :cond_18
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x18

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_d

    .line 739
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_4
    const/4 v7, 0x4

    .line 740
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_e
    if-ge v9, v4, :cond_9

    .line 741
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 742
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 744
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-eqz v23, :cond_19

    .line 745
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 746
    rem-int v10, v9, v7

    .line 747
    rem-int v23, v10, v7

    if-nez v23, :cond_1a

    .line 748
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 757
    :cond_19
    :goto_f
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 740
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 749
    :cond_1a
    rem-int v23, v10, v7

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 750
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_f

    .line 751
    :cond_1b
    rem-int v23, v10, v7

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 752
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_f

    .line 754
    :cond_1c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x10

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_f

    .line 761
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_5
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_10
    if-ltz v9, :cond_9

    .line 762
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 764
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, -0x1f

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 761
    add-int/lit8 v9, v9, -0x1

    goto :goto_10

    .line 769
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    :sswitch_6
    const/high16 v23, 0x1000

    and-int v23, v23, p1

    if-nez v23, :cond_9

    .line 770
    add-int/lit8 v9, v4, -0x1

    .restart local v9       #i:I
    :goto_11
    if-ltz v9, :cond_9

    .line 771
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 772
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 774
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 775
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 770
    :cond_1d
    add-int/lit8 v9, v9, -0x1

    goto :goto_11

    .line 780
    .end local v9           #i:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_7
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 781
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    const/16 v19, 0x1

    .line 782
    .local v19, restored:Z
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 783
    .restart local v22       #winInfo:Landroid/os/Bundle;
    const-string v23, "android.intent.extra.REQUEST_WINDOW_MODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 784
    .local v17, prevOption:I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/high16 v25, 0x10

    and-int v23, v23, v25

    if-eqz v23, :cond_1f

    .line 785
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x100001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 786
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x800001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 797
    :goto_12
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 799
    const/4 v9, 0x1

    .restart local v9       #i:I
    :goto_13
    if-ge v9, v4, :cond_9

    .line 800
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 801
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 802
    if-eqz v19, :cond_21

    .line 803
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x800001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 804
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const v25, -0x100001

    and-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 805
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    const/16 v25, 0x1e

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 806
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, -0x100

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 807
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const-string v25, "android.intent.extra.REQUEST_WINDOW_MODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 799
    :cond_1e
    :goto_14
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_13

    .line 788
    .end local v9           #i:I
    :cond_1f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    const/16 v25, 0x1e

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    .line 789
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, -0x100

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 790
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int v23, v23, v17

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_12

    .line 792
    :cond_20
    const/16 v19, 0x0

    .line 793
    const-string v23, "android.intent.extra.REQUEST_WINDOW_MODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 794
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x1e

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_12

    .line 810
    .restart local v9       #i:I
    :cond_21
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/high16 v25, 0x80

    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 811
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/high16 v25, 0x10

    or-int v23, v23, v25

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_14

    .line 816
    .end local v9           #i:I
    .end local v17           #prevOption:I
    .end local v18           #r:Lcom/android/server/am/ActivityRecord;
    .end local v19           #restored:Z
    .end local v22           #winInfo:Landroid/os/Bundle;
    :sswitch_8
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_15
    if-ge v9, v4, :cond_9

    .line 817
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 818
    .restart local v18       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 819
    .restart local v22       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    if-eqz v23, :cond_23

    .line 820
    const-string v23, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 816
    :cond_22
    :goto_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 821
    :cond_23
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    if-eqz v23, :cond_22

    .line 822
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(Landroid/os/Bundle;Landroid/graphics/Point;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_16

    .line 656
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
    .end sparse-switch
.end method

.method public calculateControlbar(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Rect;
    .locals 7
    .parameter "r"

    .prologue
    .line 566
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 567
    .local v3, orientation:I
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 568
    .local v4, winInfo:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 569
    .local v2, lastSize:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 570
    const-string v5, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #lastSize:Landroid/graphics/Rect;
    check-cast v2, Landroid/graphics/Rect;

    .line 573
    .restart local v2       #lastSize:Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    .line 574
    .local v1, centerBarRect:Landroid/graphics/Rect;
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 575
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 576
    .local v0, boundary:I
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #centerBarRect:Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v5, v0, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 582
    .end local v0           #boundary:I
    .restart local v1       #centerBarRect:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object v1

    .line 577
    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 578
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v5, v6

    .line 579
    .restart local v0       #boundary:I
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #centerBarRect:Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v0, v5, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1       #centerBarRect:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public checkBehaviorBasedLaunch()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkIgnoreIntentWindowMode()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v0, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentLaunchMode()I
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 24
    .parameter "info"
    .parameter "intent"
    .parameter "topWinInfo"

    .prologue
    .line 413
    const/4 v5, 0x0

    .line 414
    .local v5, defWidth:I
    const/4 v3, 0x0

    .line 415
    .local v3, defHeight:I
    const/4 v12, 0x0

    .line 416
    .local v12, minWidth:I
    const/4 v10, 0x0

    .line 417
    .local v10, minHeight:I
    const/4 v14, 0x0

    .line 418
    .local v14, r:Landroid/content/res/Resources;
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 419
    .local v16, winInfo:Landroid/os/Bundle;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 420
    .local v7, fullscreen:Landroid/graphics/Point;
    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 422
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 424
    .local v9, metaData:Landroid/os/Bundle;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 425
    if-eqz v9, :cond_3

    .line 426
    const-string v18, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 427
    .local v4, defSizeId:I
    if-eqz v4, :cond_0

    .line 428
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v5, v0

    .line 430
    :cond_0
    const-string v18, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 431
    if-eqz v4, :cond_1

    .line 432
    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v3, v0

    .line 435
    :cond_1
    const-string v18, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 436
    .local v11, minSizeId:I
    if-eqz v11, :cond_2

    .line 437
    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    .line 439
    :cond_2
    const-string v18, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 440
    if-eqz v11, :cond_3

    .line 441
    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    move/from16 v0, v18

    float-to-int v10, v0

    .line 450
    .end local v4           #defSizeId:I
    .end local v11           #minSizeId:I
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 451
    :cond_4
    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 452
    :cond_5
    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 453
    :cond_6
    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 455
    :cond_7
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    sub-int v18, v18, v5

    shr-int/lit8 v8, v18, 0x1

    .line 456
    .local v8, left:I
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sub-int v18, v18, v3

    shr-int/lit8 v15, v18, 0x1

    .line 457
    .local v15, top:I
    new-instance v17, Landroid/graphics/Rect;

    add-int v18, v8, v5

    add-int v19, v15, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v8, v15, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 460
    .local v17, windowRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v13

    .line 463
    .local v13, overridePosition:Landroid/graphics/Rect;
    if-eqz v13, :cond_8

    .line 464
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 467
    :cond_8
    const-string v18, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 468
    const-string v18, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 469
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v23, v0

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 470
    const-string v19, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    return-object v16

    .line 422
    .end local v8           #left:I
    .end local v9           #metaData:Landroid/os/Bundle;
    .end local v13           #overridePosition:Landroid/graphics/Rect;
    .end local v15           #top:I
    .end local v17           #windowRect:Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 444
    .restart local v9       #metaData:Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .line 445
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 446
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v6

    .line 447
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 470
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v8       #left:I
    .restart local v13       #overridePosition:Landroid/graphics/Rect;
    .restart local v15       #top:I
    .restart local v17       #windowRect:Landroid/graphics/Rect;
    :cond_a
    const/16 v18, 0x0

    goto :goto_2
.end method

.method public getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I
    .locals 8
    .parameter
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v7, 0x6

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, topActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 177
    .local v1, splitZone:I
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->getEmptySplitZone(Ljava/util/ArrayList;)I

    move-result v1

    .line 180
    if-nez v1, :cond_2

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, topWindowMode:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #topActivity:Lcom/android/server/am/ActivityRecord;
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 184
    .restart local v2       #topActivity:Lcom/android/server/am/ActivityRecord;
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 186
    :cond_0
    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    .line 188
    .local v0, options:I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 190
    :try_start_0
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    sparse-switch v4, :sswitch_data_0

    .line 252
    :cond_1
    :goto_0
    monitor-exit v5

    .line 255
    .end local v0           #options:I
    .end local v3           #topWindowMode:I
    :cond_2
    return v1

    .line 192
    .restart local v0       #options:I
    .restart local v3       #topWindowMode:I
    :sswitch_0
    and-int/lit8 v4, v0, 0x6

    if-ne v4, v7, :cond_3

    .line 194
    const/16 v1, 0x18

    goto :goto_0

    .line 196
    :cond_3
    const/4 v1, 0x6

    .line 198
    goto :goto_0

    .line 200
    :sswitch_1
    and-int/lit8 v4, v0, 0x6

    if-ne v4, v7, :cond_4

    .line 202
    const/16 v1, 0x8

    goto :goto_0

    .line 203
    :cond_4
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_5

    .line 204
    const/16 v1, 0x10

    goto :goto_0

    .line 205
    :cond_5
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_6

    .line 206
    const/4 v1, 0x6

    goto :goto_0

    .line 208
    :cond_6
    const/4 v1, 0x6

    .line 210
    goto :goto_0

    .line 212
    :sswitch_2
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_7

    .line 213
    const/4 v1, 0x4

    goto :goto_0

    .line 214
    :cond_7
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_8

    .line 215
    const/16 v1, 0x18

    goto :goto_0

    .line 216
    :cond_8
    and-int/lit8 v4, v0, 0x18

    const/16 v6, 0x18

    if-ne v4, v6, :cond_9

    .line 218
    const/4 v1, 0x2

    goto :goto_0

    .line 220
    :cond_9
    const/4 v1, 0x2

    .line 222
    goto :goto_0

    .line 224
    :sswitch_3
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_a

    .line 225
    const/4 v1, 0x4

    goto :goto_0

    .line 226
    :cond_a
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_b

    .line 227
    const/16 v1, 0x8

    goto :goto_0

    .line 228
    :cond_b
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_c

    .line 229
    const/16 v1, 0x10

    goto :goto_0

    .line 230
    :cond_c
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_d

    .line 231
    const/4 v1, 0x2

    goto :goto_0

    .line 233
    :cond_d
    const/4 v1, 0x2

    .line 235
    goto :goto_0

    .line 237
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 238
    iget v4, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_1

    .line 239
    if-eqz v2, :cond_f

    const-string v4, "android"

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v4, :cond_f

    .line 240
    :cond_e
    and-int/lit16 v1, v0, 0xff

    goto :goto_0

    .line 242
    :cond_f
    and-int/lit8 v4, v0, 0x6

    if-ne v4, v7, :cond_10

    .line 243
    const/16 v1, 0x18

    goto/16 :goto_0

    .line 245
    :cond_10
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 252
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 6
    .parameter "taskId"
    .parameter "realActivity"

    .prologue
    .line 99
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 103
    .local v2, taskBundle:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 104
    .local v1, lastSize:Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 108
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 109
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 110
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 111
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    :cond_0
    monitor-exit v4

    .line 119
    .end local v1           #lastSize:Landroid/graphics/Rect;
    .end local v2           #taskBundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 118
    :cond_1
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 120
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 119
    :cond_2
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getWindowInfoByComponent(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .parameter "realActivity"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 405
    const/4 v0, 0x1

    goto :goto_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportControlbar()Z
    .locals 2

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 398
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 401
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    return v0
.end method

.method public loadDefaultSupportedAppList()V
    .locals 7

    .prologue
    .line 384
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 385
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 386
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, supportAppList:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 388
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 389
    .local v3, supportApp:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #supportApp:Ljava/lang/String;
    .end local v4           #supportAppList:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public loadDefaultWindowInfo()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 377
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 378
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 379
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 380
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 381
    return-void
.end method

.method public removeMinimizedSlot(I)V
    .locals 5
    .parameter "taskId"

    .prologue
    .line 361
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 362
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 364
    .local v1, winInfo:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 365
    monitor-exit v3

    .line 373
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 368
    .local v0, slot:I
    if-ltz v0, :cond_1

    .line 369
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 370
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 372
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #slot:I
    .end local v1           #winInfo:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeWindowInfo(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizedSlot(I)V

    .line 356
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    monitor-exit v1

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V
    .locals 5
    .parameter "r"
    .parameter
    .parameter "useDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eqz p2, :cond_0

    .line 313
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, -0x100

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 316
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 318
    .local v0, targetWinInfo:Landroid/os/Bundle;
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 319
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, p3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 321
    .local v2, windowRect:Landroid/graphics/Rect;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 323
    .local v1, top:Lcom/android/server/am/ActivityRecord;
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 326
    .end local v1           #top:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    .end local v2           #windowRect:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void

    .line 328
    :cond_3
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x4000

    if-nez v3, :cond_4

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_4

    .line 330
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, -0x100

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 331
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 334
    :cond_4
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_2

    .line 335
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 5
    .parameter "taskId"
    .parameter "realActivity"
    .parameter "winInfo"

    .prologue
    .line 341
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 343
    .local v1, taskBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 347
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 350
    :cond_1
    monitor-exit v3

    .line 351
    return-void

    .line 350
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    .end local v1           #taskBundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
