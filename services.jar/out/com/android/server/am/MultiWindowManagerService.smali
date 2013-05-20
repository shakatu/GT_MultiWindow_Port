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
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-void

    .line 29
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
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
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    .line 55
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 56
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 57
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 58
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 59
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 61
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    .line 723
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    .line 66
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 67
    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 68
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 69
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultSupportedAppList()V

    .line 70
    return-void
.end method

.method private arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V
    .registers 7
    .parameter "winInfo"
    .parameter "fullscreen"

    .prologue
    const/4 v3, 0x0

    .line 465
    const-string v1, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 466
    .local v0, lastSize:Landroid/graphics/Rect;
    if-nez v0, :cond_13

    .line 467
    const-string v1, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #lastSize:Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .line 469
    .restart local v0       #lastSize:Landroid/graphics/Rect;
    :cond_13
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_29

    .line 470
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 471
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_29

    .line 472
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 475
    :cond_29
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_3f

    .line 476
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 477
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_3f

    .line 478
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 481
    :cond_3f
    return-void
.end method

.method private calculateCascadeWindowSize(I)Landroid/graphics/Rect;
    .registers 8
    .parameter "idx"

    .prologue
    .line 484
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 485
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 487
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 488
    .local v2, iDeviceWidth:I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 490
    .local v1, iDeviceHeight:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 491
    .local v3, rect:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/lit8 v5, p1, 0x1

    mul-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 492
    iget v4, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 493
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/lit8 v5, p1, 0x1

    mul-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 494
    iget v4, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 495
    return-object v3
.end method

.method private generateMinimizedOffset(I)Landroid/graphics/Point;
    .registers 11
    .parameter "index"

    .prologue
    .line 786
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 787
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 789
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_3c

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 790
    .local v1, shortSize:I
    :goto_10
    mul-int/lit16 v6, v1, 0xa0

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v6, v7

    .line 795
    .local v2, shortSizeDp:I
    const/16 v6, 0x258

    if-ge v2, v6, :cond_3f

    .line 796
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 797
    .local v3, statusbarHeight:I
    const/4 v4, 0x2

    .line 798
    .local v4, x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, p1, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int/2addr v6, v7

    sub-int v5, v6, v3

    .line 809
    .end local v3           #statusbarHeight:I
    .local v5, y:I
    :goto_36
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v6

    .line 789
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_3c
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_10

    .line 801
    .restart local v1       #shortSize:I
    .restart local v2       #shortSizeDp:I
    :cond_3f
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-lt v6, v7, :cond_5e

    .line 802
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x3

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 803
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
    goto :goto_36

    .line 805
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_5e
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x2

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 806
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
    goto :goto_36
.end method

.method private getEmptySplitZone(Ljava/util/ArrayList;)I
    .registers 10
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

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, emptyZone:I
    const/4 v3, 0x0

    .line 126
    .local v3, usedZone:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 127
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_8

    .line 131
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1a
    if-eqz v3, :cond_3b

    .line 132
    xor-int/lit8 v4, v3, -0x1

    and-int/lit8 v0, v4, 0x1e

    .line 133
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 134
    and-int/lit8 v4, v0, 0x6

    if-eqz v4, :cond_3c

    .line 136
    and-int/lit8 v0, v0, -0x19

    .line 137
    and-int/lit8 v4, v0, 0x6

    const/4 v6, 0x6

    if-ne v4, v6, :cond_3a

    .line 139
    :try_start_2e
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_38

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x10

    if-ne v4, v6, :cond_3a

    .line 141
    :cond_38
    and-int/lit8 v0, v0, -0x5

    .line 150
    :cond_3a
    :goto_3a
    monitor-exit v5

    .line 152
    :cond_3b
    return v0

    .line 143
    :cond_3c
    and-int/lit8 v4, v0, 0x18

    const/16 v6, 0x18

    if-ne v4, v6, :cond_3a

    .line 146
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_4c

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_3a

    .line 148
    :cond_4c
    and-int/lit8 v0, v0, -0x11

    goto :goto_3a

    .line 150
    :catchall_4f
    move-exception v4

    monitor-exit v5
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_4f

    throw v4
.end method

.method private getNextSplitZone(Ljava/util/ArrayList;)I
    .registers 8
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
    const/4 v5, 0x6

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, splitZone:I
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->getEmptySplitZone(Ljava/util/ArrayList;)I

    move-result v1

    .line 161
    if-nez v1, :cond_25

    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, topWindowMode:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 164
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget v2, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 166
    :cond_18
    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    .line 168
    .local v0, options:I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 170
    :try_start_1f
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    sparse-switch v3, :sswitch_data_7c

    .line 217
    :goto_24
    monitor-exit v4

    .line 220
    .end local v0           #options:I
    .end local v2           #topWindowMode:I
    :cond_25
    return v1

    .line 172
    .restart local v0       #options:I
    .restart local v2       #topWindowMode:I
    :sswitch_26
    and-int/lit8 v3, v0, 0x6

    if-ne v3, v5, :cond_2d

    .line 174
    const/16 v1, 0x18

    goto :goto_24

    .line 176
    :cond_2d
    const/4 v1, 0x6

    .line 178
    goto :goto_24

    .line 180
    :sswitch_2f
    and-int/lit8 v3, v0, 0x6

    if-ne v3, v5, :cond_36

    .line 182
    const/16 v1, 0x8

    goto :goto_24

    .line 183
    :cond_36
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3d

    .line 184
    const/16 v1, 0x10

    goto :goto_24

    .line 185
    :cond_3d
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_43

    .line 186
    const/4 v1, 0x6

    goto :goto_24

    .line 188
    :cond_43
    const/4 v1, 0x6

    .line 190
    goto :goto_24

    .line 192
    :sswitch_45
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4b

    .line 193
    const/4 v1, 0x4

    goto :goto_24

    .line 194
    :cond_4b
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_52

    .line 195
    const/16 v1, 0x18

    goto :goto_24

    .line 196
    :cond_52
    and-int/lit8 v3, v0, 0x18

    const/16 v5, 0x18

    if-ne v3, v5, :cond_5a

    .line 198
    const/4 v1, 0x2

    goto :goto_24

    .line 200
    :cond_5a
    const/4 v1, 0x2

    .line 202
    goto :goto_24

    .line 204
    :sswitch_5c
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_62

    .line 205
    const/4 v1, 0x4

    goto :goto_24

    .line 206
    :cond_62
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_69

    .line 207
    const/16 v1, 0x8

    goto :goto_24

    .line 208
    :cond_69
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_70

    .line 209
    const/16 v1, 0x10

    goto :goto_24

    .line 210
    :cond_70
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_76

    .line 211
    const/4 v1, 0x2

    goto :goto_24

    .line 213
    :cond_76
    const/4 v1, 0x2

    goto :goto_24

    .line 217
    :catchall_78
    move-exception v3

    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_1f .. :try_end_7a} :catchall_78

    throw v3

    .line 170
    nop

    :sswitch_data_7c
    .sparse-switch
        0x4 -> :sswitch_26
        0x8 -> :sswitch_2f
        0x10 -> :sswitch_45
        0x20 -> :sswitch_5c
    .end sparse-switch
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method


# virtual methods
.method public addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .registers 16
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
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 224
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 225
    .local v6, taskId:I
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 226
    .local v2, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 227
    .local v1, info:Landroid/content/pm/ActivityInfo;
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 229
    .local v3, realActivity:Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 231
    .local v8, topWinInfo:Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_24

    .line 232
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 233
    .local v7, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_24

    .line 234
    iget-object v10, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v8

    .line 238
    .end local v7           #top:Lcom/android/server/am/ActivityRecord;
    :cond_24
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 239
    :try_start_27
    invoke-virtual {p0, v1, v2, v8}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 242
    .local v9, winInfodefault:Landroid/os/Bundle;
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v10, v10, 0x4000

    if-nez v10, :cond_49

    .line 243
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v10, v10, 0xff

    if-eqz v10, :cond_38

    const/4 v4, 0x1

    .line 244
    .local v4, replace:Z
    :cond_38
    if-nez v4, :cond_49

    .line 245
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v10, v10, -0x100

    iput v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 246
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;)I

    move-result v12

    or-int/2addr v10, v12

    iput v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 250
    .end local v4           #replace:Z
    :cond_49
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v10, v10, 0xff

    if-eqz v10, :cond_5a

    .line 251
    const-string v10, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v12, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v12}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    :cond_5a
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 255
    .local v5, taskBundle:Landroid/os/Bundle;
    if-eqz v5, :cond_7a

    .line 256
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 261
    :goto_6b
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 262
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_87

    .line 263
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 267
    :goto_78
    monitor-exit v11

    .line 268
    return-void

    .line 258
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    :cond_7a
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 267
    .end local v5           #taskBundle:Landroid/os/Bundle;
    .end local v9           #winInfodefault:Landroid/os/Bundle;
    :catchall_84
    move-exception v10

    monitor-exit v11
    :try_end_86
    .catchall {:try_start_27 .. :try_end_86} :catchall_84

    throw v10

    .line 265
    .restart local v0       #cmpBundle:Landroid/os/Bundle;
    .restart local v5       #taskBundle:Landroid/os/Bundle;
    .restart local v9       #winInfodefault:Landroid/os/Bundle;
    :cond_87
    :try_start_87
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_84

    goto :goto_78
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .registers 14
    .parameter "windowMode"
    .parameter "winInfo"

    .prologue
    .line 749
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 750
    :try_start_3
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    .line 751
    .local v1, mode:I
    const/high16 v5, 0x100

    if-ne v1, v5, :cond_d

    .line 752
    monitor-exit v6

    .line 783
    :goto_c
    return-void

    .line 754
    :cond_d
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 756
    .local v3, options:I
    and-int/lit16 v5, p1, 0xff

    if-eqz v5, :cond_1e

    .line 757
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 761
    :cond_1e
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v7, -0x1

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 762
    .local v4, slot:I
    const/high16 v5, 0x10

    and-int/2addr v5, v3

    if-eqz v5, :cond_65

    .line 763
    if-gez v4, :cond_5e

    .line 764
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v4

    .line 765
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 766
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 771
    :goto_3d
    invoke-direct {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v2

    .line 772
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

    .line 774
    .local v0, minimizedSize:Landroid/graphics/Rect;
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 782
    .end local v0           #minimizedSize:Landroid/graphics/Rect;
    .end local v2           #offset:Landroid/graphics/Point;
    :goto_59
    monitor-exit v6

    goto :goto_c

    .end local v1           #mode:I
    .end local v3           #options:I
    .end local v4           #slot:I
    :catchall_5b
    move-exception v5

    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v5

    .line 768
    .restart local v1       #mode:I
    .restart local v3       #options:I
    .restart local v4       #slot:I
    :cond_5e
    :try_start_5e
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    goto :goto_3d

    .line 776
    :cond_65
    if-gez v4, :cond_69

    .line 777
    monitor-exit v6

    goto :goto_c

    .line 779
    :cond_69
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 780
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5e .. :try_end_74} :catchall_5b

    goto :goto_59
.end method

.method public arrangeWindowInfos(IILjava/util/ArrayList;)V
    .registers 28
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
    .line 499
    .local p3, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 500
    :try_start_7
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 501
    .local v6, fullscreen:Landroid/graphics/Point;
    invoke-static {v6}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 504
    .local v4, N:I
    const/4 v5, 0x0

    .line 505
    .local v5, divideCount:I
    const/4 v8, 0x0

    .line 507
    .local v8, j:I
    const/high16 v18, 0x1000

    and-int v18, v18, p1

    if-eqz v18, :cond_e3

    .line 508
    const/4 v9, 0x0

    .local v9, k:I
    :goto_1c
    if-ge v9, v4, :cond_53

    .line 509
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 510
    .local v14, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 511
    .local v17, winInfo:Landroid/os/Bundle;
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 512
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 508
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 514
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->clearSlots()V

    .line 516
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5d
    if-ge v7, v4, :cond_162

    .line 517
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 518
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 519
    .restart local v17       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v11

    .line 520
    .local v11, offset:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Rect;

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 522
    .local v10, minimizedSize:Landroid/graphics/Rect;
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 524
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 516
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5d

    .line 527
    .end local v7           #i:I
    .end local v9           #k:I
    .end local v10           #minimizedSize:Landroid/graphics/Rect;
    .end local v11           #offset:Landroid/graphics/Point;
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_e3
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_162

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 530
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_ef
    if-ge v7, v4, :cond_162

    .line 531
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 532
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 533
    .restart local v17       #winInfo:Landroid/os/Bundle;
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 534
    .local v16, slot:I
    if-ltz v16, :cond_15f

    .line 535
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v11

    .line 536
    .restart local v11       #offset:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Rect;

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 538
    .restart local v10       #minimizedSize:Landroid/graphics/Rect;
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 530
    .end local v10           #minimizedSize:Landroid/graphics/Rect;
    .end local v11           #offset:Landroid/graphics/Point;
    :cond_15f
    add-int/lit8 v7, v7, 0x1

    goto :goto_ef

    .line 543
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v16           #slot:I
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_162
    move/from16 v0, p2

    and-int/lit16 v0, v0, -0x401

    move/from16 p2, v0

    .line 544
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 546
    sparse-switch p2, :sswitch_data_5d6

    .line 720
    :cond_171
    monitor-exit v19

    .line 721
    return-void

    .line 548
    :sswitch_173
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_175
    if-ltz v7, :cond_171

    .line 549
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 550
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 551
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 553
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v12

    .line 554
    .local v12, option:I
    const/high16 v18, 0x80

    and-int v18, v18, v12

    if-eqz v18, :cond_1b2

    .line 548
    :goto_1af
    add-int/lit8 v7, v7, -0x1

    goto :goto_175

    .line 557
    :cond_1b2
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1c5

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    goto :goto_1af

    .line 720
    .end local v4           #N:I
    .end local v5           #divideCount:I
    .end local v6           #fullscreen:Landroid/graphics/Point;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v12           #option:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :catchall_1c2
    move-exception v18

    monitor-exit v19
    :try_end_1c4
    .catchall {:try_start_7 .. :try_end_1c4} :catchall_1c2

    throw v18

    .line 562
    .restart local v4       #N:I
    .restart local v5       #divideCount:I
    .restart local v6       #fullscreen:Landroid/graphics/Point;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v12       #option:I
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v17       #winInfo:Landroid/os/Bundle;
    :cond_1c5
    :try_start_1c5
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 563
    add-int/lit8 v8, v8, 0x1

    goto :goto_1af

    .line 567
    .end local v7           #i:I
    .end local v12           #option:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_1d9
    const/4 v5, 0x2

    .line 568
    rem-int/lit8 v18, v4, 0x2

    if-nez v18, :cond_21f

    const/4 v8, 0x1

    .line 569
    :goto_1df
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_1e1
    if-ltz v7, :cond_171

    .line 570
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 571
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 572
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 574
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_221

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 569
    :goto_21c
    add-int/lit8 v7, v7, -0x1

    goto :goto_1e1

    .line 568
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_21f
    const/4 v8, 0x0

    goto :goto_1df

    .line 578
    .restart local v7       #i:I
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v17       #winInfo:Landroid/os/Bundle;
    :cond_221
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    rem-int v18, v8, v5

    if-nez v18, :cond_249

    const/16 v18, 0x6

    :goto_22b
    or-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 580
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 582
    add-int/lit8 v18, v8, 0x1

    rem-int v8, v18, v5

    goto :goto_21c

    .line 578
    :cond_249
    const/16 v18, 0x18

    goto :goto_22b

    .line 586
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_24c
    const/4 v5, 0x3

    .line 587
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_24f
    if-ltz v7, :cond_171

    .line 588
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 589
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 590
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 592
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_28d

    .line 593
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 587
    :goto_28a
    add-int/lit8 v7, v7, -0x1

    goto :goto_24f

    .line 597
    :cond_28d
    rem-int v8, v7, v5

    .line 598
    rem-int v18, v8, v5

    if-nez v18, :cond_2b1

    .line 599
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x6

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 605
    :goto_29d
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_28a

    .line 600
    :cond_2b1
    rem-int v18, v8, v5

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_2c6

    .line 601
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_29d

    .line 603
    :cond_2c6
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_29d

    .line 609
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_2d1
    const/4 v5, 0x3

    .line 610
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_2d4
    if-ltz v7, :cond_171

    .line 611
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 612
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 613
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 615
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_312

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 610
    :goto_30f
    add-int/lit8 v7, v7, -0x1

    goto :goto_2d4

    .line 620
    :cond_312
    rem-int v8, v7, v5

    .line 621
    rem-int v18, v8, v5

    if-nez v18, :cond_336

    .line 622
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 628
    :goto_322
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_30f

    .line 623
    :cond_336
    rem-int v18, v8, v5

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_34b

    .line 624
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_322

    .line 626
    :cond_34b
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x18

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_322

    .line 632
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_356
    const/4 v5, 0x4

    .line 633
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_358
    if-ge v7, v4, :cond_171

    .line 634
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 635
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 637
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 639
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_396

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 633
    :goto_393
    add-int/lit8 v7, v7, 0x1

    goto :goto_358

    .line 644
    :cond_396
    rem-int v8, v7, v5

    .line 645
    rem-int v18, v8, v5

    if-nez v18, :cond_3ba

    .line 646
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 654
    :goto_3a6
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_393

    .line 647
    :cond_3ba
    rem-int v18, v8, v5

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3cf

    .line 648
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_3a6

    .line 649
    :cond_3cf
    rem-int v18, v8, v5

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3e4

    .line 650
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_3a6

    .line 652
    :cond_3e4
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_3a6

    .line 658
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_3ef
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_3f1
    if-ltz v7, :cond_171

    .line 659
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 661
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 658
    add-int/lit8 v7, v7, -0x1

    goto :goto_3f1

    .line 666
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    :sswitch_408
    const/high16 v18, 0x1000

    and-int v18, v18, p1

    if-nez v18, :cond_171

    .line 667
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_410
    if-ltz v7, :cond_171

    .line 668
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 669
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 670
    .restart local v17       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 667
    add-int/lit8 v7, v7, -0x1

    goto :goto_410

    .line 675
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_43c
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 676
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    const/4 v15, 0x1

    .line 677
    .local v15, restored:Z
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 678
    .restart local v17       #winInfo:Landroid/os/Bundle;
    const-string v18, "android.intent.extra.REQUEST_WINDOW_MODE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 679
    .local v13, prevOption:I
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const/high16 v20, 0x10

    and-int v18, v18, v20

    if-eqz v18, :cond_52c

    .line 680
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const v20, -0x100001

    and-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 681
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const v20, -0x800001

    and-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 692
    :goto_499
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 694
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_4ad
    if-ge v7, v4, :cond_171

    .line 695
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 696
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 697
    if-eqz v15, :cond_578

    .line 698
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const v20, -0x800001

    and-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 699
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const v20, -0x100001

    and-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 700
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v20, 0x1e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_529

    .line 701
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, -0x100

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 702
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const-string v20, "android.intent.extra.REQUEST_WINDOW_MODE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    or-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 694
    :cond_529
    :goto_529
    add-int/lit8 v7, v7, 0x1

    goto :goto_4ad

    .line 683
    .end local v7           #i:I
    :cond_52c
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v20, 0x1e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_558

    .line 684
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, -0x100

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 685
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int v18, v18, v13

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_499

    .line 687
    :cond_558
    const/4 v15, 0x0

    .line 688
    const-string v18, "android.intent.extra.REQUEST_WINDOW_MODE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1e

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_499

    .line 705
    .restart local v7       #i:I
    :cond_578
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const/high16 v20, 0x80

    or-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 706
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const/high16 v20, 0x10

    or-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_529

    .line 711
    .end local v7           #i:I
    .end local v13           #prevOption:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v15           #restored:Z
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_591
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_592
    if-ge v7, v4, :cond_171

    .line 712
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 713
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    if-eqz v18, :cond_5d3

    .line 714
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 715
    .restart local v17       #winInfo:Landroid/os/Bundle;
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_5d3
    .catchall {:try_start_1c5 .. :try_end_5d3} :catchall_1c2

    .line 711
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_5d3
    add-int/lit8 v7, v7, 0x1

    goto :goto_592

    .line 546
    :sswitch_data_5d6
    .sparse-switch
        0x1 -> :sswitch_591
        0x2 -> :sswitch_173
        0x4 -> :sswitch_1d9
        0x8 -> :sswitch_24c
        0x10 -> :sswitch_2d1
        0x20 -> :sswitch_356
        0x40 -> :sswitch_43c
        0x80 -> :sswitch_408
        0x100 -> :sswitch_408
        0x200 -> :sswitch_3ef
    .end sparse-switch
.end method

.method public checkBehaviorBasedLaunch()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkIgnoreIntentWindowMode()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_3
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v0, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getCurrentLaunchMode()I
    .registers 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    .line 118
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 30
    .parameter "info"
    .parameter "intent"
    .parameter "topWinInfo"

    .prologue
    .line 388
    const/4 v6, 0x0

    .line 389
    .local v6, defWidth:I
    const/4 v4, 0x0

    .line 390
    .local v4, defHeight:I
    const/4 v13, 0x0

    .line 391
    .local v13, minWidth:I
    const/4 v11, 0x0

    .line 392
    .local v11, minHeight:I
    const/16 v16, 0x0

    .line 393
    .local v16, r:Landroid/content/res/Resources;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v18, winInfo:Landroid/os/Bundle;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 395
    .local v8, fullscreen:Landroid/graphics/Point;
    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 397
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1c1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 399
    .local v10, metaData:Landroid/os/Bundle;
    :goto_2b
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v16

    .line 400
    if-eqz v10, :cond_9d

    .line 401
    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 402
    .local v5, defSizeId:I
    if-eqz v5, :cond_58

    .line 403
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v6, v0

    .line 405
    :cond_58
    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 406
    if-eqz v5, :cond_6f

    .line 407
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v4, v0

    .line 410
    :cond_6f
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 411
    .local v12, minSizeId:I
    if-eqz v12, :cond_86

    .line 412
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 414
    :cond_86
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 415
    if-eqz v12, :cond_9d

    .line 416
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_99} :catch_1c7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_99} :catch_1cd

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 425
    .end local v5           #defSizeId:I
    .end local v12           #minSizeId:I
    :cond_9d
    :goto_9d
    if-nez v6, :cond_a3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 426
    :cond_a3
    if-nez v4, :cond_a9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 427
    :cond_a9
    if-nez v13, :cond_af

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 428
    :cond_af
    if-nez v11, :cond_b5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 430
    :cond_b5
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v20, v6

    shr-int/lit8 v9, v20, 0x1

    .line 431
    .local v9, left:I
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    sub-int v20, v20, v4

    shr-int/lit8 v17, v20, 0x1

    .line 432
    .local v17, top:I
    new-instance v19, Landroid/graphics/Rect;

    add-int v20, v9, v6

    add-int v21, v17, v4

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 433
    .local v19, windowRect:Landroid/graphics/Rect;
    if-eqz p3, :cond_151

    .line 434
    const-string v20, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 435
    .local v15, parentSize:Landroid/graphics/Rect;
    if-nez v15, :cond_f2

    .line 436
    const-string v20, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    .end local v15           #parentSize:Landroid/graphics/Rect;
    check-cast v15, Landroid/graphics/Rect;

    .line 439
    .restart local v15       #parentSize:Landroid/graphics/Rect;
    :cond_f2
    if-eqz v15, :cond_151

    .line 440
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 442
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_12e

    .line 443
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 445
    :cond_12e
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_151

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 451
    .end local v15           #parentSize:Landroid/graphics/Rect;
    :cond_151
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v14

    .line 452
    .local v14, overridePosition:Landroid/graphics/Rect;
    if-eqz v14, :cond_160

    .line 453
    const-string v20, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 456
    :cond_160
    const-string v20, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 457
    const-string v20, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    new-instance v21, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 458
    const-string v20, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v21, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v25, v0

    invoke-direct/range {v21 .. v25}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 459
    const-string v21, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d3

    const/16 v20, 0x1

    :goto_1b7
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    return-object v18

    .line 397
    .end local v9           #left:I
    .end local v10           #metaData:Landroid/os/Bundle;
    .end local v14           #overridePosition:Landroid/graphics/Rect;
    .end local v17           #top:I
    .end local v19           #windowRect:Landroid/graphics/Rect;
    :cond_1c1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_2b

    .line 419
    .restart local v10       #metaData:Landroid/os/Bundle;
    :catch_1c7
    move-exception v7

    .line 420
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_9d

    .line 421
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1cd
    move-exception v7

    .line 422
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_9d

    .line 459
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v9       #left:I
    .restart local v14       #overridePosition:Landroid/graphics/Rect;
    .restart local v17       #top:I
    .restart local v19       #windowRect:Landroid/graphics/Rect;
    :cond_1d3
    const/16 v20, 0x0

    goto :goto_1b7
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 9
    .parameter "taskId"
    .parameter "realActivity"

    .prologue
    .line 91
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 92
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 94
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 95
    .local v2, taskBundle:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 96
    .local v1, lastSize:Landroid/graphics/Rect;
    if-nez v1, :cond_4b

    .line 97
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 99
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 100
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_4b

    .line 101
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 102
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_4b

    .line 103
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    :cond_4b
    monitor-exit v4

    .line 111
    .end local v1           #lastSize:Landroid/graphics/Rect;
    .end local v2           #taskBundle:Landroid/os/Bundle;
    :goto_4c
    return-object v2

    .line 110
    :cond_4d
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_5a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 112
    :catchall_57
    move-exception v3

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v3

    .line 111
    :cond_5a
    :try_start_5a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_57

    goto :goto_4c
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .registers 3
    .parameter "componentName"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 381
    const/4 v0, 0x1

    .line 384
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSupportControlbar()Z
    .registers 3

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    if-nez v0, :cond_16

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 373
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 376
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    return v0
.end method

.method public loadDefaultSupportedAppList()V
    .registers 8

    .prologue
    .line 359
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 360
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 361
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, supportAppList:[Ljava/lang/String;
    if-eqz v4, :cond_2b

    .line 363
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1f
    if-ge v1, v2, :cond_2b

    aget-object v3, v0, v1

    .line 364
    .local v3, supportApp:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 368
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #supportApp:Ljava/lang/String;
    .end local v4           #supportAppList:[Ljava/lang/String;
    :cond_2b
    return-void
.end method

.method public loadDefaultWindowInfo()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 352
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 353
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 354
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 355
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 356
    return-void
.end method

.method public removeMinimizedSlot(I)V
    .registers 7
    .parameter "taskId"

    .prologue
    .line 336
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 337
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 339
    .local v1, winInfo:Landroid/os/Bundle;
    if-nez v1, :cond_13

    .line 340
    monitor-exit v3

    .line 348
    :goto_12
    return-void

    .line 342
    :cond_13
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 343
    .local v0, slot:I
    if-ltz v0, :cond_27

    .line 344
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 345
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 347
    :cond_27
    monitor-exit v3

    goto :goto_12

    .end local v0           #slot:I
    .end local v1           #winInfo:Landroid/os/Bundle;
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public removeWindowInfo(I)V
    .registers 5
    .parameter "taskId"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizedSlot(I)V

    .line 331
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .registers 12
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
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v8, 0x0

    .line 271
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    .line 272
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v6, v6, -0x100

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 275
    :cond_c
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 276
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 278
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v2

    .line 279
    .local v2, targetWinInfo:Landroid/os/Bundle;
    invoke-direct {p0, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 281
    .local v5, windowRect:Landroid/graphics/Rect;
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_84

    .line 282
    if-eqz p2, :cond_7e

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7e

    .line 283
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 284
    .local v3, top:Lcom/android/server/am/ActivityRecord;
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 285
    .local v4, topWinInfo:Landroid/os/Bundle;
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 286
    .local v1, parentSize:Landroid/graphics/Rect;
    if-nez v1, :cond_51

    .line 287
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #parentSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 290
    .restart local v1       #parentSize:Landroid/graphics/Rect;
    :cond_51
    if-eqz v1, :cond_7e

    .line 291
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 293
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_6d

    .line 294
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 296
    :cond_6d
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_7e

    .line 297
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    shl-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 301
    .end local v1           #parentSize:Landroid/graphics/Rect;
    .end local v3           #top:Lcom/android/server/am/ActivityRecord;
    .end local v4           #topWinInfo:Landroid/os/Bundle;
    :cond_7e
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    :cond_83
    :goto_83
    return-void

    .line 303
    :cond_84
    if-eqz p2, :cond_9b

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9b

    .line 304
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_9b

    .line 305
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 309
    :cond_9b
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v6, v6, 0xff

    if-eqz v6, :cond_83

    .line 310
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_83
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 9
    .parameter "taskId"
    .parameter "realActivity"
    .parameter "winInfo"

    .prologue
    .line 316
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 317
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 318
    .local v1, taskBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_14

    .line 319
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 321
    :cond_14
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 322
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_21

    .line 323
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 325
    :cond_21
    monitor-exit v3

    .line 326
    return-void

    .line 325
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    .end local v1           #taskBundle:Landroid/os/Bundle;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2
.end method
