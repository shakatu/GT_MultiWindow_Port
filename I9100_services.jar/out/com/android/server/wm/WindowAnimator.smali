.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$SetAnimationParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowAnimator"

.field static final WALLPAPER_ACTION_PENDING:I = 0x1


# instance fields
.field mAdjResult:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field mDh:I

.field mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

.field mDw:I

.field mForceHiding:Z

.field mInnerDh:I

.field mInnerDw:I

.field mPendingActions:I

.field mPendingLayoutChanges:I

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

.field mWindowAnimationBackgroundColor:I

.field mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .registers 6
    .parameter "service"
    .parameter "context"
    .parameter "policy"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWinAnimators:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 70
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 71
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 72
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 76
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 77
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    iput-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 87
    return-void
.end method

.method private performAnimationsLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 448
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 449
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 450
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    .line 452
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->updateWindowsAndWallpaperLocked()V

    .line 453
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_19

    .line 454
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    .line 457
    :cond_19
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    .line 458
    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .registers 9

    .prologue
    .line 407
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v5, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 408
    .local v2, appTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 409
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v0, :cond_68

    .line 410
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 411
    .local v4, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 412
    .local v1, allDrawn:Z
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v5, :cond_37

    .line 413
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v1, v5, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 414
    if-eqz v1, :cond_37

    .line 417
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v5, :cond_4c

    .line 418
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 419
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 425
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 440
    :cond_37
    :goto_37
    if-nez v1, :cond_49

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_49

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-nez v5, :cond_49

    .line 441
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 409
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 427
    :cond_4c
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 434
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 435
    iget-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    iget-object v6, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_37

    .line 444
    .end local v1           #allDrawn:Z
    .end local v4           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_68
    return-void
.end method

.method private testWallpaperAndBackgroundLocked()V
    .registers 10

    .prologue
    const/high16 v8, 0x200

    .line 107
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v6, v7, :cond_12

    .line 111
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 112
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 115
    :cond_12
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    if-eqz v6, :cond_8f

    .line 119
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 120
    .local v4, target:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v6, v4, :cond_2a

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v6, v4, :cond_2a

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v6, v4, :cond_44

    .line 123
    :cond_2a
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 124
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v0, :cond_44

    .line 125
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 126
    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-boolean v6, v5, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_7e

    .line 127
    move-object v4, v5

    .line 132
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_44
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-nez v6, :cond_53

    .line 133
    new-instance v6, Lcom/android/server/wm/DimSurface;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, v7}, Lcom/android/server/wm/DimSurface;-><init>(Landroid/view/SurfaceSession;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 135
    :cond_53
    iget v2, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    .line 136
    .local v2, dw:I
    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    .line 139
    .local v1, dh:I
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    if-eqz v6, :cond_81

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    if-eq v6, v8, :cond_7d

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_81

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    if-ne v6, v8, :cond_81

    .line 151
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v4           #target:Lcom/android/server/wm/WindowState;
    :cond_7d
    :goto_7d
    return-void

    .line 124
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #target:Lcom/android/server/wm/WindowState;
    .restart local v5       #w:Lcom/android/server/wm/WindowState;
    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 145
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    .restart local v1       #dh:I
    .restart local v2       #dw:I
    :cond_81
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    invoke-virtual {v6, v2, v1, v7, v8}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    goto :goto_7d

    .line 148
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v4           #target:Lcom/android/server/wm/WindowState;
    :cond_8f
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v6, :cond_7d

    .line 149
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v6}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_7d
.end method

.method private updateWindowsAndWallpaperLocked()V
    .registers 23

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 208
    const/16 v18, 0x0

    .line 209
    .local v18, unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v19, 0x0

    .line 210
    .local v19, wallpaperInUnForceHiding:Z
    const/16 v16, 0x0

    .line 212
    .local v16, keyguard:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, i:I
    :goto_1c
    if-ltz v14, :cond_28f

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 214
    .local v3, win:Lcom/android/server/wm/WindowState;
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    .line 215
    .local v21, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 217
    .local v13, flags:I
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_13a

    .line 218
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v20, v0

    .line 219
    .local v20, wasAnimating:Z
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v17

    .line 229
    .local v17, nowAnimating:Z
    if-eqz v17, :cond_8e

    .line 230
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_89

    .line 231
    const/high16 v2, 0x10

    and-int/2addr v2, v13

    if-eqz v2, :cond_63

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 233
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 235
    :cond_63
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v11

    .line 236
    .local v11, backgroundColor:I
    if-eqz v11, :cond_89

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_81

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_89

    .line 240
    :cond_81
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 241
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    .line 245
    .end local v11           #backgroundColor:I
    :cond_89
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 251
    :cond_8e
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_185

    const/4 v9, 0x0

    .line 253
    .local v9, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :goto_93
    if-eqz v9, :cond_d2

    iget-object v2, v9, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_d2

    iget-boolean v2, v9, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v2, :cond_d2

    .line 255
    const/high16 v2, 0x10

    and-int/2addr v2, v13

    if-eqz v2, :cond_ae

    iget-object v2, v9, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 257
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 259
    :cond_ae
    iget-object v2, v9, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v11

    .line 260
    .restart local v11       #backgroundColor:I
    if-eqz v11, :cond_d2

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_ca

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_d2

    .line 264
    :cond_ca
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 265
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    .line 270
    .end local v11           #backgroundColor:I
    :cond_d2
    if-eqz v20, :cond_f6

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_f6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_f6

    .line 271
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 272
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 279
    :cond_f6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 280
    move-object/from16 v16, v3

    .line 281
    if-nez v20, :cond_123

    if-eqz v17, :cond_123

    .line 285
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 286
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 293
    :cond_123
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_13a

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_13a

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAllDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 294
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 364
    .end local v9           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v17           #nowAnimating:Z
    .end local v20           #wasAnimating:Z
    :cond_13a
    :goto_13a
    iget-object v10, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 365
    .local v10, atoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_159

    .line 366
    if-eqz v10, :cond_149

    iget-boolean v2, v10, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_159

    .line 367
    :cond_149
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_159

    .line 368
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 376
    :cond_159
    if-nez v10, :cond_28b

    const/4 v9, 0x0

    .line 378
    .restart local v9       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :goto_15c
    if-eqz v9, :cond_181

    iget-object v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v2, :cond_181

    .line 379
    iget v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    if-eq v2, v4, :cond_173

    .line 380
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 381
    const/4 v2, 0x0

    iput v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 383
    :cond_173
    iget v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_181

    .line 384
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 212
    :cond_181
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1c

    .line 251
    .end local v9           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v10           #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v17       #nowAnimating:Z
    .restart local v20       #wasAnimating:Z
    :cond_185
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v9, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_93

    .line 305
    .restart local v9       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :cond_18b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 307
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1e8

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v2, v4, :cond_1e8

    const/4 v15, 0x1

    .line 309
    .local v15, isAttachedWindowToKeyguard:Z
    :goto_1a6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    if-eqz v2, :cond_1bd

    if-nez v15, :cond_1bd

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1c5

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x8

    and-int/2addr v2, v4

    if-eqz v2, :cond_1c5

    :cond_1bd
    if-eqz v15, :cond_1ea

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_1ea

    .line 311
    :cond_1c5
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .line 353
    .local v12, changed:Z
    :cond_1cb
    :goto_1cb
    if-eqz v12, :cond_13a

    const/high16 v2, 0x10

    and-int/2addr v2, v13

    if-eqz v2, :cond_13a

    .line 354
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 355
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    goto/16 :goto_13a

    .line 307
    .end local v12           #changed:Z
    .end local v15           #isAttachedWindowToKeyguard:Z
    :cond_1e8
    const/4 v15, 0x0

    goto :goto_1a6

    .line 316
    .restart local v15       #isAttachedWindowToKeyguard:Z
    :cond_1ea
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_22d

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_1f8
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_22f

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v7

    :goto_206
    invoke-interface/range {v2 .. v7}, Landroid/view/WindowManagerPolicy;->mustBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    if-eqz v2, :cond_231

    .line 317
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .line 318
    .restart local v12       #changed:Z
    if-eqz v12, :cond_1cb

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy mustBeForceHidden hideLw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cb

    .line 316
    .end local v12           #changed:Z
    :cond_22d
    const/4 v5, 0x0

    goto :goto_1f8

    :cond_22f
    const/4 v7, 0x0

    goto :goto_206

    .line 321
    :cond_231
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v12

    .line 324
    .restart local v12       #changed:Z
    if-eqz v12, :cond_1cb

    .line 325
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_260

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_260

    .line 327
    if-nez v18, :cond_24e

    .line 328
    new-instance v18, Ljava/util/ArrayList;

    .end local v18           #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .restart local v18       #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_24e
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v2, v4

    if-eqz v2, :cond_260

    .line 332
    const/16 v19, 0x1

    .line 335
    :cond_260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_270

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_277

    .line 339
    :cond_270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 343
    :cond_277
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v2, v4, :cond_1cb

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_1cb

    .line 376
    .end local v9           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v12           #changed:Z
    .end local v15           #isAttachedWindowToKeyguard:Z
    .end local v17           #nowAnimating:Z
    .end local v20           #wasAnimating:Z
    .restart local v10       #atoken:Lcom/android/server/wm/AppWindowToken;
    :cond_28b
    iget-object v9, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_15c

    .line 392
    .end local v3           #win:Lcom/android/server/wm/WindowState;
    .end local v10           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v13           #flags:I
    .end local v21           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_28f
    if-eqz v18, :cond_2ba

    .line 393
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    :goto_297
    if-ltz v14, :cond_2ba

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v8

    .line 395
    .local v8, a:Landroid/view/animation/Animation;
    if-eqz v8, :cond_2b7

    .line 396
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowStateAnimator;

    .line 397
    .restart local v21       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 398
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 393
    .end local v21           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_2b7
    add-int/lit8 v14, v14, -0x1

    goto :goto_297

    .line 402
    .end local v8           #a:Landroid/view/animation/Animation;
    :cond_2ba
    return-void
.end method

.method private updateWindowsAppsAndRotationAnimationsLocked()V
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 154
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 156
    .local v3, appTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 157
    .local v0, NAT:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    if-ge v4, v0, :cond_3c

    .line 158
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 159
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_31

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_31

    move v5, v7

    .line 161
    .local v5, wasAnimating:Z
    :goto_20
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v9, v10, v6, v11}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 162
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 157
    :cond_2e
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .end local v5           #wasAnimating:Z
    :cond_31
    move v5, v8

    .line 159
    goto :goto_20

    .line 163
    .restart local v5       #wasAnimating:Z
    :cond_33
    if-eqz v5, :cond_2e

    .line 165
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    goto :goto_2e

    .line 175
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #wasAnimating:Z
    :cond_3c
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 176
    .local v1, NEAT:I
    const/4 v4, 0x0

    :goto_45
    if-ge v4, v1, :cond_7a

    .line 177
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 178
    .restart local v2       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_6f

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_6f

    move v5, v7

    .line 180
    .restart local v5       #wasAnimating:Z
    :goto_5e
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v9, v10, v6, v11}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 181
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 176
    :cond_6c
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .end local v5           #wasAnimating:Z
    :cond_6f
    move v5, v8

    .line 178
    goto :goto_5e

    .line 182
    .restart local v5       #wasAnimating:Z
    :cond_71
    if-eqz v5, :cond_6c

    .line 184
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    goto :goto_6c

    .line 194
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #wasAnimating:Z
    :cond_7a
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v6, :cond_92

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_92

    .line 195
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 196
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 203
    :cond_92
    :goto_92
    return-void

    .line 198
    :cond_93
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 199
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 200
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_92
.end method


# virtual methods
.method declared-synchronized animate()V
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 461
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_4
    iput v4, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 463
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 464
    iget-boolean v3, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 465
    .local v3, wasAnimating:Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 472
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_cd

    .line 475
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->updateWindowsAppsAndRotationAnimationsLocked()V

    .line 476
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked()V

    .line 477
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->testWallpaperAndBackgroundLocked()V

    .line 481
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_29

    .line 482
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfaces()V

    .line 485
    :cond_29
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 486
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_30
    if-ge v2, v0, :cond_41

    .line 487
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowStateAnimator;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 490
    :cond_41
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v4, :cond_54

    .line 491
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V

    .line 493
    :cond_54
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v4, :cond_78

    .line 494
    iget-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->isDimming()Z

    move-result v9

    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-nez v4, :cond_b7

    move v4, v5

    :goto_71
    invoke-virtual {v8, v9, v10, v11, v4}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v4

    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 498
    :cond_78
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_93

    .line 499
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_b9

    .line 500
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    .line 507
    :cond_93
    :goto_93
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_a0

    .line 508
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v4}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_a0
    .catchall {:try_start_17 .. :try_end_a0} :catchall_d0
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_a0} :catch_c1

    .line 513
    :cond_a0
    :try_start_a0
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 516
    .end local v0           #N:I
    .end local v2           #i:I
    :goto_a3
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->bulkSetParameters(II)V

    .line 518
    iget-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v4, :cond_d5

    .line 519
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V
    :try_end_b5
    .catchall {:try_start_a0 .. :try_end_b5} :catchall_cd

    .line 528
    :cond_b5
    :goto_b5
    monitor-exit p0

    return-void

    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_b7
    move v4, v6

    .line 494
    goto :goto_71

    .line 503
    :cond_b9
    :try_start_b9
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v4}, Lcom/android/server/wm/BlackFrame;->clearMatrix()V
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_d0
    .catch Ljava/lang/RuntimeException; {:try_start_b9 .. :try_end_c0} :catch_c1

    goto :goto_93

    .line 510
    .end local v0           #N:I
    .end local v2           #i:I
    :catch_c1
    move-exception v1

    .line 511
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_c2
    const-string v4, "WindowAnimator"

    const-string v5, "Unhandled exception in Window Manager"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_d0

    .line 513
    :try_start_c9
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_a3

    .line 461
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v3           #wasAnimating:Z
    :catchall_cd
    move-exception v4

    monitor-exit p0

    throw v4

    .line 513
    .restart local v3       #wasAnimating:Z
    :catchall_d0
    move-exception v4

    :try_start_d1
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4

    .line 520
    :cond_d5
    if-eqz v3, :cond_b5

    .line 521
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V
    :try_end_dc
    .catchall {:try_start_d1 .. :try_end_dc} :catchall_cd

    goto :goto_b5
.end method

.method declared-synchronized clearPendingActions()V
    .registers 2

    .prologue
    .line 610
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 611
    monitor-exit p0

    return-void

    .line 610
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    .line 575
    if-eqz p3, :cond_68

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_13

    .line 577
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 580
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimTransactionSequence="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 582
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v0, :cond_44

    .line 583
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 586
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v0, :cond_69

    .line 587
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimAnimator:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 593
    :cond_68
    :goto_68
    return-void

    .line 590
    :cond_69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "no DimAnimator "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_68
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .registers 9
    .parameter "w"

    .prologue
    .line 90
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p1, :cond_c

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_12

    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_52

    .line 92
    :cond_12
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 93
    .local v2, token:Lcom/android/server/wm/WindowToken;
    iget-object v5, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 94
    .local v3, wallpaper:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 95
    .local v4, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v5, :cond_2c

    .line 96
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 97
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 98
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    goto :goto_2c

    .line 101
    .end local v3           #wallpaper:Lcom/android/server/wm/WindowState;
    .end local v4           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_4e
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    goto :goto_1a

    .line 104
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_52
    return-void
.end method

.method isDimming()Z
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z
    .registers 3
    .parameter "winAnimator"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v0, p1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .parameter "currentFocus"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 533
    return-void
.end method

.method setDisplayDimensions(IIII)V
    .registers 5
    .parameter "curWidth"
    .parameter "curHeight"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 537
    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    .line 538
    iput p2, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    .line 539
    iput p3, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    .line 540
    iput p4, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    .line 541
    return-void
.end method

.method startDimming(Lcom/android/server/wm/WindowStateAnimator;FII)V
    .registers 10
    .parameter "winAnimator"
    .parameter "target"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-nez v1, :cond_f

    .line 546
    new-instance v1, Lcom/android/server/wm/DimAnimator;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Lcom/android/server/wm/DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 549
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-nez v1, :cond_4c

    const/4 v0, 0x0

    .line 552
    .local v0, dimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :goto_14
    iget-boolean v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_34

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_34

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-lt v1, v2, :cond_34

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget v1, v1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    if-ne v1, p3, :cond_34

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget v1, v1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    if-eq v1, p4, :cond_4b

    .line 556
    :cond_34
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v3, 0x186a3

    new-instance v4, Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-direct {v4, p1, p3, p4, p2}, Lcom/android/server/wm/DimAnimator$Parameters;-><init>(Lcom/android/server/wm/WindowStateAnimator;IIF)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 559
    :cond_4b
    return-void

    .line 549
    .end local v0           #dimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_4c
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v0, v1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_14
.end method

.method stopDimming()V
    .registers 5

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v2, 0x186a3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 564
    return-void
.end method
