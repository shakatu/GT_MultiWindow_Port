.class public Lcom/android/internal/policy/impl/sec/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;
    }
.end annotation


# static fields
.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MSG_GO_TO_UNLOCK_SCREEN:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL:I

.field private TAG:Ljava/lang/String;

.field private helpOverlayTip:I

.field private isHelpOverlayUSA:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

.field private mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mDefaultHelpOverlay:Z

.field private mDefaultHelpText:Ljava/lang/String;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsCameraShortCut:Z

.field private mIsHelpTextEnabled:Z

.field private mIsMotionLockscreen:Z

.field private mIsMultipleWakeUpOn:Z

.field private mIsTouchExplorationEnabled:Z

.field private mIsWaterRipple:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLockIcon:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedEventWidget:Landroid/view/View;

.field private mMissedMsgList:Landroid/view/View;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

.field private mTalkbackEnabled:Z

.field private mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

.field private mUnlockWidget:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

.field private mVoiceHelpText:Landroid/widget/TextView;

.field private mVoiceIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 30
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 407
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v3, "CircleLockScreen"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 73
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    .line 102
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 108
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 109
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 110
    const/16 v3, 0x12c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 116
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 120
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 121
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 384
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 386
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->MSG_SET_VOICE_RECOGNITION_FAIL:I

    .line 387
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->MSG_GO_TO_UNLOCK_SCREEN:I

    .line 401
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 402
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 403
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    .line 409
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 410
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 411
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 412
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 413
    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCreationOrientation:I

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 424
    .local v10, accesibilityService:Ljava/lang/String;
    if-eqz v10, :cond_d5

    .line 425
    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v10, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 426
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-eqz v3, :cond_586

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_d5
    :goto_d5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v3, :cond_10f

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 435
    .local v11, drivingMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 437
    .local v23, unlockDrivingMode:I
    const/4 v3, 0x1

    if-ne v11, v3, :cond_591

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_591

    .line 438
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v11           #drivingMode:I
    .end local v23           #unlockDrivingMode:I
    :cond_10f
    :goto_10f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTalkbackEnabled ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v3, :cond_153

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_exploration_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 450
    .local v13, exploreByTouchMode:I
    const/4 v3, 0x1

    if-ne v13, v3, :cond_59c

    .line 451
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "explore by touch mode on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v13           #exploreByTouchMode:I
    :cond_153
    :goto_153
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setFocusable(Z)V

    .line 459
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 460
    const/high16 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setDescendantFocusability(I)V

    .line 462
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    .line 463
    .local v15, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5a7

    .line 465
    const v3, 0x1090057

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 475
    :goto_17a
    const v3, 0x10202ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5b2

    const/4 v3, 0x1

    :goto_19c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5b5

    const/4 v3, 0x1

    :goto_1b3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsCameraShortCut:Z

    .line 479
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_1c3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsCameraShortCut:Z

    if-eqz v3, :cond_1d0

    .line 480
    :cond_1c3
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v3, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    .line 483
    :cond_1d0
    const v3, 0x10202f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 486
    const v3, 0x10202f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    const v3, 0x10202f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    .line 490
    const v3, 0x10202f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    .line 492
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_239

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_239

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    :cond_239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5b8

    const/4 v3, 0x1

    :goto_24c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 498
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v3, :cond_279

    .line 500
    :try_start_256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 501
    .local v16, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_279

    .line 502
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_279
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_256 .. :try_end_279} :catch_5bb

    .line 511
    .end local v16           #info:Landroid/content/pm/ApplicationInfo;
    :cond_279
    :goto_279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_5cc

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v3

    if-eqz v3, :cond_5cc

    .line 512
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 516
    :goto_28e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    if-eqz v3, :cond_5e7

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    :goto_29c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_5f2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_5f2

    const/4 v3, 0x1

    :goto_2a9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpOverlayUSA:Z

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5f5

    const/16 v17, 0x0

    .line 525
    .local v17, isLiveWallpaper:Z
    :goto_2c1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    .line 526
    .local v21, isWaterRippleConfig:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5f9

    const/16 v19, 0x1

    .line 527
    .local v19, isRippleEffect:Z
    :goto_2e4
    if-nez v17, :cond_5fd

    if-eqz v21, :cond_5fd

    if-eqz v19, :cond_5fd

    const/4 v3, 0x1

    :goto_2eb
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    .line 529
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->createUnlockWidget()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    .line 531
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    .line 604
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 615
    new-instance v3, Lcom/android/internal/policy/impl/sec/ClockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/sec/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    .line 618
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_600

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v3

    if-nez v3, :cond_600

    .line 619
    new-instance v3, Lcom/android/internal/policy/impl/sec/UsimWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/sec/UsimWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    .line 624
    :goto_33f
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v18

    .line 625
    .local v18, isNewMissedWidgetIsUsed:Z
    if-eqz v18, :cond_607

    .line 626
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v3, v0, v6}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    .line 632
    :goto_35e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "information_ticker"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_61e

    const/16 v20, 0x1

    .line 633
    .local v20, isTickerOn:Z
    :goto_36e
    if-eqz v20, :cond_638

    .line 634
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_622

    .line 635
    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v7, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    .line 645
    :goto_38f
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Landroid/content/res/Configuration;ZLcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    .line 652
    const v3, 0x10202f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 656
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_3f0

    .line 660
    const v3, 0x10202f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 663
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-nez v3, :cond_3f0

    .line 664
    const v3, 0x10202f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 673
    :cond_3f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v3, :cond_403

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 677
    :cond_403
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_64a

    .line 678
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 680
    .local v22, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 686
    .end local v22           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_475

    .line 687
    if-eqz v18, :cond_659

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_454

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 692
    :cond_454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v3, :cond_475

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 708
    :cond_475
    :goto_475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_69d

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_69d

    const/4 v3, 0x1

    :goto_48d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    .line 710
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 712
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_510

    .line 713
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v3, :cond_510

    .line 717
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpHubInstalled()Z

    move-result v3

    if-eqz v3, :cond_6a0

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->needToShowHelpPage()I

    move-result v8

    .line 722
    .local v8, mChecked:I
    :goto_4ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_6b4

    const/16 v3, 0xb

    if-ge v8, v3, :cond_6b1

    const/4 v14, 0x1

    .line 725
    .local v14, flag:Z
    :goto_4d1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isShortcutApplied()Z

    move-result v3

    if-nez v3, :cond_4dc

    .line 726
    const/16 v3, 0x65

    if-ge v8, v3, :cond_6be

    const/4 v14, 0x1

    .line 729
    :cond_4dc
    :goto_4dc
    if-eqz v14, :cond_510

    .line 732
    new-instance v7, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    .line 748
    .local v7, helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_6c1

    .line 749
    new-instance v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 755
    :goto_504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 760
    .end local v7           #helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    .end local v8           #mChecked:I
    .end local v14           #flag:Z
    :cond_510
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v3, :cond_523

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 764
    :cond_523
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_541

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v3

    if-nez v3, :cond_541

    .line 765
    const v3, 0x10202f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 768
    :cond_541
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 769
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 772
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMissedEventCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V

    .line 782
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 784
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->refreshDefaultHelpText(Z)V

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    return-void

    .line 429
    .end local v15           #inflater:Landroid/view/LayoutInflater;
    .end local v17           #isLiveWallpaper:Z
    .end local v18           #isNewMissedWidgetIsUsed:Z
    .end local v19           #isRippleEffect:Z
    .end local v20           #isTickerOn:Z
    .end local v21           #isWaterRippleConfig:Z
    :cond_586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d5

    .line 441
    .restart local v11       #drivingMode:I
    .restart local v23       #unlockDrivingMode:I
    :cond_591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f

    .line 454
    .end local v11           #drivingMode:I
    .end local v23           #unlockDrivingMode:I
    .restart local v13       #exploreByTouchMode:I
    :cond_59c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "explore by touch mode off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_153

    .line 468
    .end local v13           #exploreByTouchMode:I
    .restart local v15       #inflater:Landroid/view/LayoutInflater;
    :cond_5a7
    const v3, 0x1090058

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_17a

    .line 477
    :cond_5b2
    const/4 v3, 0x0

    goto/16 :goto_19c

    .line 478
    :cond_5b5
    const/4 v3, 0x0

    goto/16 :goto_1b3

    .line 497
    :cond_5b8
    const/4 v3, 0x0

    goto/16 :goto_24c

    .line 505
    :catch_5bb
    move-exception v12

    .line 506
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_279

    .line 514
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5cc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5e5

    const/4 v3, 0x1

    :goto_5df
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    goto/16 :goto_28e

    :cond_5e5
    const/4 v3, 0x0

    goto :goto_5df

    .line 519
    :cond_5e7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_29c

    .line 522
    :cond_5f2
    const/4 v3, 0x0

    goto/16 :goto_2a9

    .line 524
    :cond_5f5
    const/16 v17, 0x1

    goto/16 :goto_2c1

    .line 526
    .restart local v17       #isLiveWallpaper:Z
    .restart local v21       #isWaterRippleConfig:Z
    :cond_5f9
    const/16 v19, 0x0

    goto/16 :goto_2e4

    .line 527
    .restart local v19       #isRippleEffect:Z
    :cond_5fd
    const/4 v3, 0x0

    goto/16 :goto_2eb

    .line 621
    :cond_600
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    goto/16 :goto_33f

    .line 628
    .restart local v18       #isNewMissedWidgetIsUsed:Z
    :cond_607
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v3, v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_35e

    .line 632
    :cond_61e
    const/16 v20, 0x0

    goto/16 :goto_36e

    .line 637
    .restart local v20       #isTickerOn:Z
    :cond_622
    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    goto/16 :goto_38f

    .line 641
    :cond_638
    const v3, 0x10202f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_38f

    .line 682
    :cond_64a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_420

    .line 697
    :cond_659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_67a

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 701
    :cond_67a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v3, :cond_475

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_475

    .line 708
    :cond_69d
    const/4 v3, 0x0

    goto/16 :goto_48d

    .line 720
    :cond_6a0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .restart local v8       #mChecked:I
    goto/16 :goto_4ac

    .line 723
    :cond_6b1
    const/4 v14, 0x0

    goto/16 :goto_4d1

    :cond_6b4
    const/16 v3, 0x6f

    if-ge v8, v3, :cond_6bb

    const/4 v14, 0x1

    goto/16 :goto_4d1

    :cond_6bb
    const/4 v14, 0x0

    goto/16 :goto_4d1

    .line 726
    .restart local v14       #flag:Z
    :cond_6be
    const/4 v14, 0x0

    goto/16 :goto_4dc

    .line 752
    .restart local v7       #helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    :cond_6c1
    new-instance v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    goto/16 :goto_504
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/sec/TickerWidget;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->refreshDefaultHelpText(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method private bedimBackground(Z)V
    .registers 4
    .parameter "on"

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_5

    .line 909
    :goto_4
    return-void

    .line 904
    :cond_5
    if-eqz p1, :cond_f

    .line 905
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/high16 v1, 0x5500

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 907
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4
.end method

.method private createUnlockWidget()Landroid/view/View;
    .registers 4

    .prologue
    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, unlockWidget:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v1, :cond_f

    .line 878
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 882
    .restart local v0       #unlockWidget:Landroid/view/View;
    :goto_e
    return-object v0

    .line 880
    :cond_f
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #unlockWidget:Landroid/view/View;
    goto :goto_e
.end method

.method private isActiveStreamExist()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 861
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 862
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_10
    return v0

    .line 864
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 865
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 867
    :cond_21
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 868
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 871
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private isHelpHubInstalled()Z
    .registers 5

    .prologue
    .line 1231
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1232
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1235
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 1236
    const/4 v3, 0x1

    .line 1237
    :goto_1a
    return v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private isKioskModeEnabled()Z
    .registers 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_c

    .line 1196
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1198
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isSecure()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1241
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_6

    .line 1244
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_14
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private isSimPinSecure()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1248
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v2, :cond_6

    .line 1251
    :cond_5
    :goto_5
    return v1

    .line 1250
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1251
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_1c

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_1c

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_1c

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_5

    :cond_1c
    const/4 v1, 0x1

    goto :goto_5
.end method

.method private needToShowHelpPage()I
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1203
    const/4 v0, 0x3

    new-array v9, v0, [Landroid/net/Uri;

    .line 1204
    .local v9, uri:[Landroid/net/Uri;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v1

    .line 1205
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v2

    .line 1206
    const/4 v0, 0x2

    const-string v1, "content://com.samsung.helphub.provider/help_page_status/unlock_via_events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v9, v0

    .line 1208
    const/4 v8, 0x0

    .line 1210
    .local v8, result:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_20
    array-length v0, v9

    if-ge v7, v0, :cond_80

    .line 1211
    const/4 v6, 0x0

    .line 1214
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, v9, v7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1218
    if-eqz v6, :cond_71

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1219
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getInt(0) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x4024

    int-to-double v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D
    :try_end_6d
    .catchall {:try_start_24 .. :try_end_6d} :catchall_79

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 1223
    :cond_71
    if-eqz v6, :cond_76

    .line 1224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1210
    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 1223
    :catchall_79
    move-exception v0

    if-eqz v6, :cond_7f

    .line 1224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v0

    .line 1227
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_80
    return v8
.end method

.method private refreshDefaultHelpText(Z)V
    .registers 5
    .parameter "isVoiceUnlockFailed"

    .prologue
    const v2, 0x1040687

    const v1, 0x1040684

    .line 791
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_58

    .line 792
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_37

    .line 793
    if-nez p1, :cond_1a

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 794
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    .line 820
    :goto_26
    return-void

    .line 796
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040689

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_26

    .line 799
    :cond_37
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_48

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_26

    .line 802
    :cond_48
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040688

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_26

    .line 806
    :cond_58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_85

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_85

    .line 807
    if-nez p1, :cond_68

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 808
    :cond_68
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_26

    .line 810
    :cond_75
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040686

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_26

    .line 813
    :cond_85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_96

    .line 814
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_26

    .line 816
    :cond_96
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040685

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_26
.end method

.method private startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 5
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 827
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 853
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->start()V

    .line 858
    :goto_2c
    return-void

    .line 856
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    goto :goto_2c
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1055
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_c

    .line 1056
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1f

    .line 1058
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1f

    .line 1059
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->cleanUp()V

    .line 1060
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 1064
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 1065
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->cleanUp()V

    .line 1066
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->cleanUp()V

    .line 1068
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_44

    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->cleanUp()V

    .line 1071
    :cond_44
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_4d

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->cleanUp()V

    .line 1074
    :cond_4d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->cleanUp()V

    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_5d

    .line 1076
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->cleanUp()V

    .line 1078
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_66

    .line 1079
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->cleanUp()V

    .line 1081
    :cond_66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpDestroy()V

    .line 1083
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V

    .line 1087
    :cond_7c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1090
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1091
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 1092
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 956
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_21

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 958
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_21

    .line 959
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_21

    .line 960
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 964
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_21
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 887
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_b

    .line 889
    const/4 v1, 0x0

    .line 896
    :goto_a
    return v1

    .line 892
    :cond_b
    const-string v0, ""

    .line 893
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->getTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public goToUnlockScreen()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    :cond_a
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 1154
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .registers 1

    .prologue
    .line 1172
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .registers 1

    .prologue
    .line 1261
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 1176
    return-void
.end method

.method public onMissedCallUpdate()V
    .registers 2

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1272
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->updateMissedEvent()V

    .line 1274
    :cond_b
    return-void
.end method

.method public onMissedMsgUpdate()V
    .registers 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1279
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->updateMissedEvent()V

    .line 1281
    :cond_b
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1022
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_b

    .line 1023
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_30

    .line 1025
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_30

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_30

    .line 1026
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay removeView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->onPause()V

    .line 1028
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1031
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_3b

    .line 1032
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->onPause()V

    .line 1033
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onPause()V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_49

    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->onPause()V

    .line 1038
    :cond_49
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_5e

    .line 1039
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onPause()V

    .line 1041
    :cond_5e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->onPause()V

    .line 1043
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_6e

    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->onPause()V

    .line 1046
    :cond_6e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_77

    .line 1047
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->onPause()V

    .line 1049
    :cond_77
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1050
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    .line 1051
    :cond_88
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 2
    .parameter "phoneState"

    .prologue
    .line 1168
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 7
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 1126
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1132
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_1a

    .line 1133
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1134
    :cond_1a
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 1146
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter "child"
    .parameter "event"

    .prologue
    .line 1180
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1184
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1185
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1186
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1187
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1188
    const/4 v1, 0x1

    .line 1190
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_b

    .line 972
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->onResume()V

    .line 977
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onResume()V

    .line 979
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_30

    .line 980
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onResume()V

    .line 982
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->onResume()V

    .line 984
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_40

    .line 985
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->onResume()V

    .line 987
    :cond_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_49

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->onResume()V

    .line 992
    :cond_49
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.isShowingAndNotHidden()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1000
    :cond_80
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-nez v0, :cond_8b

    .line 1001
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 1003
    :cond_8b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_94

    .line 1004
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->onResume()V

    .line 1006
    :cond_94
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_d5

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_d5

    .line 1007
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_d5

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->onResume()V

    .line 1009
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 1010
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_d5

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d5

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1014
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1018
    :cond_d5
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1160
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 3
    .parameter "simState"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1140
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_1a

    .line 1141
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1142
    :cond_1a
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .registers 3
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 1150
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 1164
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 950
    :goto_10
    return v0

    .line 919
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_82

    .line 946
    :cond_18
    :goto_18
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_7f

    .line 947
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 948
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_10

    .line 921
    :pswitch_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_42

    .line 922
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->registerListener()V

    .line 923
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->resetMotionEngine()V

    .line 924
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 926
    :cond_42
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_4d

    .line 927
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->actionDown()V

    .line 930
    :cond_4d
    :pswitch_4d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_18

    .line 931
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_18

    .line 935
    :pswitch_5b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_73

    .line 936
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->resetMotionEngine()V

    .line 937
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 938
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_73

    .line 939
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    .line 941
    :cond_73
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 942
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->actionUp()V

    goto :goto_18

    :cond_7f
    move v0, v1

    .line 950
    goto :goto_10

    .line 919
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_5b
        :pswitch_4d
        :pswitch_5b
    .end packed-switch
.end method

.method public onUserChanged(I)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 1267
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 1096
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_58

    const-string v0, "focused"

    :goto_6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1100
    if-eqz p1, :cond_5b

    .line 1101
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1106
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    .line 1107
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->setWhichHelpInfo()V

    .line 1108
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 1109
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_57

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_57

    .line 1111
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    :cond_57
    return-void

    .line 1096
    :cond_58
    const-string v0, "unfocused"

    goto :goto_6

    .line 1103
    :cond_5b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    goto :goto_1c
.end method

.method public setVoiceRecognitionFailed()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    :cond_a
    return-void
.end method
