.class public Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    }
.end annotation


# static fields
.field private static REVISE_WINDOW_BOUNDARY_X:I = 0x0

.field private static REVISE_WINDOW_BOUNDARY_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowEvent"

.field private static mIsFillWindow:Z

.field private static sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

.field private static sIsQueriedActionBarViewSetMultiWindowReserved:Z

.field private static statusBarHeight:I


# instance fields
.field private ENABLED_ACTION_BAR_DOUBLE_TAPPING:Z

.field private ENABLED_MINIMIZED_BUTTON:Z

.field private final HOVERING_WIDTH:I

.field private final SHOWING_PADDING_WIDTH:I

.field private fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

.field private hasGuideLayout:Z

.field private longDownX:I

.field private longDownY:I

.field private mActivity:Landroid/app/Activity;

.field private mArrange:I

.field private mBorderFrame:Landroid/widget/FrameLayout;

.field private mBorderLayout:Landroid/widget/LinearLayout;

.field private mBottomBorderPadding:I

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

.field private mDividor1:Landroid/view/View;

.field private mDividor2:Landroid/view/View;

.field private mExitButton:Landroid/widget/ImageButton;

.field private mGestureView:Landroid/gesture/GestureOverlayView;

.field private mIsPhone:Z

.field private mIsResizeOnly:Z

.field private mLastWindowMode:I

.field private mLeftBorderPadding:I

.field private mMaxSize:Landroid/graphics/Point;

.field private mMaximizeButton:Landroid/widget/ImageButton;

.field private mMinHeight:F

.field private mMinWidth:F

.field private mMinimizeButton:Landroid/widget/ImageButton;

.field private mMultiWindowButton:Landroid/widget/ImageButton;

.field private mOwner:Landroid/view/Window;

.field private final mPaddingWidth:I

.field private mPinupButton:Landroid/widget/ImageButton;

.field private mRightBorderPadding:I

.field private mTitleText:Landroid/widget/TextView;

.field private mTopBorderPadding:I

.field private mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

.field private mUserWindowFlags:I

.field private mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

.field private mWfdReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowBackground:Landroid/graphics/drawable/Drawable;

.field private mWindowContentFrame:Landroid/widget/LinearLayout;

.field private mWindowTitleBar:Landroid/view/View;

.field private supportFlick:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 77
    sput v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 126
    sput-boolean v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    .line 139
    sput-boolean v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    .line 141
    const/16 v0, 0x12c

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 142
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    return-void
.end method

.method private constructor <init>(Landroid/view/Window;)V
    .registers 16
    .parameter "owner"

    .prologue
    .line 408
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    .line 87
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 89
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 94
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 105
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 107
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 108
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 110
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 111
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLeftBorderPadding:I

    .line 112
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTopBorderPadding:I

    .line 113
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mRightBorderPadding:I

    .line 114
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBottomBorderPadding:I

    .line 116
    const/high16 v10, 0x100

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 118
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 119
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 121
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    .line 122
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_ACTION_BAR_DOUBLE_TAPPING:Z

    .line 124
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    .line 128
    const/16 v10, 0x1e

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPaddingWidth:I

    .line 129
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->SHOWING_PADDING_WIDTH:I

    .line 130
    const/16 v10, 0x14

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->HOVERING_WIDTH:I

    .line 132
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    .line 133
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    .line 135
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 137
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    .line 1891
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 409
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    .line 410
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    .line 412
    sget-boolean v10, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    if-eqz v10, :cond_99

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    instance-of v10, v10, Landroid/app/Activity;

    if-nez v10, :cond_99

    .line 413
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    instance-of v10, v10, Landroid/content/ContextWrapper;

    if-nez v10, :cond_72

    .line 548
    :cond_71
    :goto_71
    return-void

    .line 417
    :cond_72
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/content/ContextWrapper;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    .line 418
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_71

    .line 421
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    instance-of v10, v10, Landroid/app/Activity;

    if-eqz v10, :cond_71

    .line 422
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 423
    .local v1, a:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getMultiPhoneWindowEvent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 424
    .local v8, stubEvent:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    if-eqz v8, :cond_99

    .line 425
    invoke-virtual {v8, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDisplayStub(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 432
    .end local v1           #a:Landroid/app/Activity;
    .end local v8           #stubEvent:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    :cond_99
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    .line 433
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->disallowOperationWithResize()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    .line 435
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 436
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    invoke-static {v10}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 438
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-le v10, v11, :cond_17d

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v7, v10, Landroid/graphics/Point;->y:I

    .line 439
    .local v7, shortSize:I
    :goto_bf
    mul-int/lit16 v10, v7, 0xa0

    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int/2addr v10, v11

    const/16 v11, 0x258

    if-ge v10, v11, :cond_183

    const/4 v10, 0x1

    :goto_c9
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 441
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v10

    sput v10, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 443
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 444
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 445
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 446
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v11, 0x800

    or-int/2addr v10, v11

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 447
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v10, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 449
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 460
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 461
    .local v2, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowMode()I

    move-result v9

    .line 462
    .local v9, windowMode:I
    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    .line 463
    .local v6, mode:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v10, v10, -0x401

    iput v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 465
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 466
    sparse-switch v6, :sswitch_data_1aa

    .line 484
    :cond_11e
    :goto_11e
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    .line 485
    .local v0, WIFI_DISPLAY:Ljava/lang/String;
    new-instance v10, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v3, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v3, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 506
    .local v3, intentFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 509
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.MW_PREVIOS_SIZE_BUTTON_STATE"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.VIDEOCAPABILITY"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 544
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v11, "keyguard"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 545
    .local v4, km:Landroid/app/KeyguardManager;
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isWfdConnected(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_177

    if-eqz v4, :cond_71

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v10

    if-eqz v10, :cond_71

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v10

    if-eqz v10, :cond_71

    .line 546
    :cond_177
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto/16 :goto_71

    .line 438
    .end local v0           #WIFI_DISPLAY:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    .end local v4           #km:Landroid/app/KeyguardManager;
    .end local v5           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #mode:I
    .end local v7           #shortSize:I
    .end local v9           #windowMode:I
    :cond_17d
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v7, v10, Landroid/graphics/Point;->x:I

    goto/16 :goto_bf

    .line 439
    .restart local v7       #shortSize:I
    :cond_183
    const/4 v10, 0x0

    goto/16 :goto_c9

    .line 468
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v5       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v6       #mode:I
    .restart local v9       #windowMode:I
    :sswitch_186
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v10

    if-nez v10, :cond_192

    .line 469
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 471
    :cond_192
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto :goto_11e

    .line 474
    :sswitch_196
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v10

    if-nez v10, :cond_1a1

    .line 475
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fullScreenModeLayout(Landroid/content/Context;)V

    .line 477
    :cond_1a1
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    if-eqz v10, :cond_11e

    .line 478
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_11e

    .line 466
    :sswitch_data_1aa
    .sparse-switch
        0x1000000 -> :sswitch_196
        0x2000000 -> :sswitch_186
    .end sparse-switch
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 74
    sget v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    sput p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/graphics/Point;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_ACTION_BAR_DOUBLE_TAPPING:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    return-object v0
.end method

.method private calculatePaddingRect(I)Landroid/graphics/Rect;
    .registers 16
    .parameter "windowMode"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 977
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v10

    .line 979
    .local v10, winInfo:Landroid/os/Bundle;
    invoke-direct {p0, p1, v10}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v2

    .line 980
    .local v2, currentRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 982
    .local v6, paddingRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 983
    .local v5, left:I
    const/4 v9, 0x0

    .line 984
    .local v9, top:I
    const/4 v7, 0x0

    .line 985
    .local v7, right:I
    const/4 v0, 0x0

    .line 986
    .local v0, bottom:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 988
    .local v8, titleBarHeight:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v3, v11

    .line 989
    .local v3, currentWidth:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v1, v11

    .line 990
    .local v1, currentHeight:F
    iget v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    iget v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    div-float v4, v11, v12

    .line 992
    .local v4, fixedRatio:F
    div-float v11, v3, v4

    sub-float v11, v1, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_3f

    .line 994
    div-float v11, v3, v4

    sub-float v11, v1, v11

    float-to-int v11, v11

    div-int/lit8 v0, v11, 0x2

    move v9, v0

    .line 995
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1001
    :cond_3e
    :goto_3e
    return-object v6

    .line 996
    :cond_3f
    mul-float v11, v1, v4

    sub-float v11, v3, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_3e

    .line 998
    mul-float v11, v1, v4

    sub-float v11, v3, v11

    float-to-int v11, v11

    div-int/lit8 v7, v11, 0x2

    move v5, v7

    .line 999
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3e
.end method

.method private createGhostView(II)Z
    .registers 16
    .parameter "startX"
    .parameter "startY"

    .prologue
    const/4 v11, 0x1

    const/4 v12, -0x1

    .line 1706
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    if-eqz v0, :cond_12

    .line 1708
    const-string v0, "MultiPhoneWindowEvent"

    const-string v1, "fd is not null. dismiss old guide relayout window"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 1712
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v9

    .line 1713
    .local v9, windowMode:I
    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    .line 1714
    const/4 v0, 0x0

    .line 1741
    :goto_22
    return v0

    .line 1717
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 1718
    .local v10, windowParm:Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/graphics/Rect;

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    sub-int/2addr v1, v3

    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v5

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v5, v6

    sget v6, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v0, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1721
    .local v2, windowRect:Landroid/graphics/Rect;
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v12, :cond_96

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v12, :cond_96

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_96

    .line 1724
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1725
    .local v8, width:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1726
    .local v7, height:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1727
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v8

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1728
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 1729
    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v7

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1731
    .end local v7           #height:I
    .end local v8           #width:I
    :cond_96
    new-instance v4, Landroid/graphics/Point;

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1734
    .local v4, delta:Landroid/graphics/Point;
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/16 v5, 0x8

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1736
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    sget v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setStatusBarHeight(I)V

    .line 1737
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 1739
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLeftBorderPadding:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTopBorderPadding:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mRightBorderPadding:I

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBottomBorderPadding:I

    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setBackgroundPadding(IIII)V

    move v0, v11

    .line 1741
    goto/16 :goto_22
.end method

.method private disallowOperationWithResize()Z
    .registers 8

    .prologue
    .line 277
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_44

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 280
    .local v0, a:Landroid/app/Activity;
    :try_start_a
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 281
    .local v1, activityMetaData:Landroid/os/Bundle;
    if-eqz v1, :cond_44

    .line 282
    const-string v4, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, style:Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    .local v2, activityStyles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 286
    const-string v4, "resizeOnly"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_3e} :catch_43

    move-result v4

    if-eqz v4, :cond_44

    .line 287
    const/4 v4, 0x1

    .line 296
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #activityMetaData:Landroid/os/Bundle;
    .end local v2           #activityStyles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #style:Ljava/lang/String;
    :goto_42
    return v4

    .line 292
    .restart local v0       #a:Landroid/app/Activity;
    :catch_43
    move-exception v4

    .line 296
    .end local v0           #a:Landroid/app/Activity;
    :cond_44
    const/4 v4, 0x0

    goto :goto_42
.end method

.method private forceHideInputMethod()Z
    .registers 3

    .prologue
    .line 235
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 236
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 237
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 239
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private freestyleModeLayout(Landroid/content/Context;I)V
    .registers 23
    .parameter "context"
    .parameter "decoVisibility"

    .prologue
    .line 645
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 647
    .local v5, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindowMode()I

    move-result v15

    .line 649
    .local v15, windowMode:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowNoController(I)Z

    move-result v17

    if-eqz v17, :cond_61

    .line 650
    const v17, 0x10900a5

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const v18, 0x10203ae

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 654
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 655
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 773
    :goto_60
    return-void

    .line 659
    :cond_61
    const v17, 0x10900a5

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const v18, 0x10203ae

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v17

    const v18, 0x10203f6

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 665
    .local v2, actionContainer:Landroid/view/View;
    new-instance v6, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 666
    .local v6, listener:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;
    new-instance v11, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;)V

    .line 667
    .local v11, pwl:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    new-instance v13, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 669
    .local v13, tbl:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;
    const/4 v10, 0x1

    .line 672
    .local v10, needsTitleBar:Z
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x80

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 674
    .local v7, metaData:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v14

    .line 675
    .local v14, winInfo:Landroid/os/Bundle;
    if-eqz v14, :cond_366

    .line 676
    const-string v17, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 677
    .local v8, minSize:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 678
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 693
    .end local v8           #minSize:Landroid/graphics/Rect;
    :cond_108
    :goto_108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_120

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_162

    .line 694
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105005a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105005b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 698
    :cond_162
    if-eqz v7, :cond_177

    .line 699
    const-string v17, "com.sec.android.multiwindow.STYLE"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 700
    .local v16, windowStyle:Ljava/lang/String;
    if-eqz v16, :cond_177

    .line 701
    const-string v17, "noTitleBar"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_173
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b6 .. :try_end_173} :catch_3b4

    move-result v17

    if-eqz v17, :cond_177

    .line 702
    const/4 v10, 0x0

    .line 709
    .end local v7           #metaData:Landroid/os/Bundle;
    .end local v14           #winInfo:Landroid/os/Bundle;
    .end local v16           #windowStyle:Ljava/lang/String;
    :cond_177
    :goto_177
    const v17, 0x10900a7

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x10203b7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x10203b8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x10203bd

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x10203b6

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x10203ba

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x10203b9

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x10203bb

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x10203bc

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 751
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 755
    :try_start_339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 756
    .local v3, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v17, "mPinupClickListener"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 757
    .local v4, field:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_361
    .catch Ljava/lang/NoSuchFieldException; {:try_start_339 .. :try_end_361} :catch_363
    .catch Ljava/lang/IllegalArgumentException; {:try_start_339 .. :try_end_361} :catch_3ba
    .catch Ljava/lang/IllegalAccessException; {:try_start_339 .. :try_end_361} :catch_3b7

    goto/16 :goto_60

    .line 770
    .end local v3           #activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #field:Ljava/lang/reflect/Field;
    :catch_363
    move-exception v17

    goto/16 :goto_60

    .line 679
    .restart local v7       #metaData:Landroid/os/Bundle;
    .restart local v14       #winInfo:Landroid/os/Bundle;
    :cond_366
    if-eqz v7, :cond_108

    .line 680
    :try_start_368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 681
    .local v12, r:Landroid/content/res/Resources;
    if-eqz v12, :cond_108

    .line 682
    const-string v17, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 683
    .local v9, minSizeId:I
    if-eqz v9, :cond_39a

    .line 684
    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 686
    :cond_39a
    const-string v17, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 687
    if-eqz v9, :cond_108

    .line 688
    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F
    :try_end_3b2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_368 .. :try_end_3b2} :catch_3b4

    goto/16 :goto_108

    .line 706
    .end local v7           #metaData:Landroid/os/Bundle;
    .end local v9           #minSizeId:I
    .end local v12           #r:Landroid/content/res/Resources;
    .end local v14           #winInfo:Landroid/os/Bundle;
    :catch_3b4
    move-exception v17

    goto/16 :goto_177

    .line 772
    :catch_3b7
    move-exception v17

    goto/16 :goto_60

    .line 771
    :catch_3ba
    move-exception v17

    goto/16 :goto_60
.end method

.method private fullScreenModeLayout(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isResizable(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1030
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 1032
    :cond_11
    return-void
.end method

.method private getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;
    .registers 10
    .parameter "windowMode"
    .parameter "winInfo"

    .prologue
    .line 1495
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    .line 1496
    new-instance v1, Landroid/graphics/Rect;

    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1510
    :goto_16
    return-object v1

    .line 1501
    :cond_17
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1503
    .local v0, lastSize:Landroid/graphics/Rect;
    if-eqz v0, :cond_23

    move-object v1, v0

    .line 1504
    goto :goto_16

    .line 1506
    :cond_23
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isFullSize(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1507
    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object v1, v2

    goto :goto_16

    .line 1510
    :cond_33
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    sget v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sget v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_16
.end method

.method public static installDecor(Landroid/view/Window;)Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .registers 2
    .parameter "owner"

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 313
    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->needsMultiWindowDecor(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 314
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;-><init>(Landroid/view/Window;)V

    .line 317
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isCompatModeEnabled(Landroid/view/Window;)Z
    .registers 7
    .parameter "w"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 300
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_25

    .line 301
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 303
    .local v0, a:Landroid/app/Activity;
    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 305
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v2

    .line 306
    .local v2, compatMode:I
    if-ne v2, v3, :cond_23

    .line 308
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #compatMode:I
    :goto_22
    return v3

    .restart local v0       #a:Landroid/app/Activity;
    .restart local v1       #am:Landroid/app/ActivityManager;
    .restart local v2       #compatMode:I
    :cond_23
    move v3, v4

    .line 306
    goto :goto_22

    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #compatMode:I
    :cond_25
    move v3, v4

    .line 308
    goto :goto_22
.end method

.method private static isFillWindow(Landroid/view/Window;)Z
    .registers 10
    .parameter "owner"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 199
    .local v1, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 200
    .local v3, width:I
    const/4 v2, 0x0

    .line 202
    .local v2, height:I
    sput-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 204
    instance-of v6, v1, Landroid/content/ContextWrapper;

    if-nez v6, :cond_13

    instance-of v6, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v6, :cond_19

    .line 205
    :cond_13
    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    .restart local v1       #context:Landroid/content/Context;
    :cond_19
    if-eqz v1, :cond_2b

    instance-of v6, v1, Landroid/app/Activity;

    if-eqz v6, :cond_2b

    move-object v0, v1

    .line 208
    check-cast v0, Landroid/app/Activity;

    .line 209
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v4

    .line 210
    .local v4, windowMode:I
    const/high16 v6, 0x20

    and-int/2addr v6, v4

    if-nez v6, :cond_2c

    .line 231
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #windowMode:I
    :cond_2b
    :goto_2b
    return v5

    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v4       #windowMode:I
    :cond_2c
    move-object v5, v1

    .line 213
    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 214
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 219
    if-lez v3, :cond_5e

    if-lez v2, :cond_5e

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v5, :cond_5e

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v5, :cond_5e

    .line 222
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 231
    :cond_5b
    :goto_5b
    sget-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_2b

    .line 223
    :cond_5e
    if-lez v3, :cond_79

    if-lez v2, :cond_79

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_79

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-ne v2, v5, :cond_79

    .line 226
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_5b

    .line 227
    :cond_79
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v8, :cond_5b

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v5, v8, :cond_5b

    .line 229
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_5b
.end method

.method private static isForceTitleBar(Landroid/view/Window;)Z
    .registers 8
    .parameter "w"

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_48

    .line 256
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 258
    .local v0, a:Landroid/app/Activity;
    :try_start_e
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 259
    .local v1, activityMetaData:Landroid/os/Bundle;
    if-eqz v1, :cond_48

    .line 260
    const-string v4, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, style:Ljava/lang/String;
    if-eqz v3, :cond_48

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 263
    .local v2, activityStyles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_48

    .line 264
    const-string v4, "forceTitleBar"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_42} :catch_47

    move-result v4

    if-eqz v4, :cond_48

    .line 265
    const/4 v4, 0x1

    .line 273
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #activityMetaData:Landroid/os/Bundle;
    .end local v2           #activityStyles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #style:Ljava/lang/String;
    :goto_46
    return v4

    .line 270
    .restart local v0       #a:Landroid/app/Activity;
    :catch_47
    move-exception v4

    .line 273
    .end local v0           #a:Landroid/app/Activity;
    :cond_48
    const/4 v4, 0x0

    goto :goto_46
.end method

.method static isFullSize(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 342
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isFullSize(I)Z

    move-result v0

    return v0
.end method

.method static isMinimized(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 338
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v0

    return v0
.end method

.method static isMultiWindow(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 326
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    return v0
.end method

.method static isNormalWindow(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 322
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v0

    return v0
.end method

.method static isPinup(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 334
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPinup(I)Z

    move-result v0

    return v0
.end method

.method static isResizable(I)Z
    .registers 2
    .parameter "windowMode"

    .prologue
    .line 330
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isResizable(I)Z

    move-result v0

    return v0
.end method

.method private static needsMultiWindowDecor(Landroid/view/Window;)Z
    .registers 4
    .parameter "owner"

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-virtual {p0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isFillWindow(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_11
    invoke-virtual {p0}, Landroid/view/Window;->isNoWindowDecor()Z

    move-result v1

    if-nez v1, :cond_3e

    move-object v1, p0

    check-cast v1, Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_26
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_3e

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCompatModeEnabled(Landroid/view/Window;)Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v1, 0x1

    :goto_3d
    return v1

    :cond_3e
    move v1, v2

    goto :goto_3d
.end method

.method private needsMultiWindowPadding()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 158
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_42

    .line 159
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 160
    .local v2, windowMode:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 161
    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 162
    .local v1, option:I
    const v5, 0x8000

    and-int/2addr v5, v1

    if-eqz v5, :cond_1c

    .line 180
    .end local v1           #option:I
    .end local v2           #windowMode:I
    :cond_1b
    :goto_1b
    return v4

    .line 166
    .restart local v1       #option:I
    .restart local v2       #windowMode:I
    :cond_1c
    :try_start_1c
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 167
    .local v0, metaData:Landroid/os/Bundle;
    if-eqz v0, :cond_42

    .line 168
    const-string v5, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, windowStyle:Ljava/lang/String;
    if-eqz v3, :cond_42

    .line 170
    const-string v5, "fixedRatio"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_3f} :catch_44

    move-result v5

    if-nez v5, :cond_1b

    .line 180
    .end local v0           #metaData:Landroid/os/Bundle;
    .end local v1           #option:I
    .end local v2           #windowMode:I
    .end local v3           #windowStyle:Ljava/lang/String;
    :cond_42
    :goto_42
    const/4 v4, 0x0

    goto :goto_1b

    .line 175
    .restart local v1       #option:I
    .restart local v2       #windowMode:I
    :catch_44
    move-exception v4

    goto :goto_42
.end method

.method private reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 7
    .parameter "windowRect"
    .parameter "maxSize"

    .prologue
    .line 1005
    sget v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 1006
    .local v0, boundaryX:I
    sget v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    .line 1008
    .local v1, boundaryY:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_23

    .line 1009
    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1015
    :cond_13
    :goto_13
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_33

    .line 1016
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1021
    :cond_22
    :goto_22
    return-void

    .line 1011
    :cond_23
    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_13

    .line 1012
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_13

    .line 1018
    :cond_33
    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_22

    .line 1019
    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_22
.end method

.method private setActionBarMenuVisibility(Z)V
    .registers 9
    .parameter "visible"

    .prologue
    const v3, 0x10203f7

    .line 552
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 589
    :cond_b
    :goto_b
    return-void

    .line 556
    :cond_c
    const/4 v0, 0x0

    .line 557
    .local v0, actionBarView:Lcom/android/internal/widget/ActionBarView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v2, :cond_52

    .line 558
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #actionBarView:Lcom/android/internal/widget/ActionBarView;
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .line 563
    .restart local v0       #actionBarView:Lcom/android/internal/widget/ActionBarView;
    :goto_1f
    if-eqz v0, :cond_b

    .line 567
    sget-boolean v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    if-nez v2, :cond_39

    .line 569
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setMultiWindowReserved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_39} :catch_5f

    .line 575
    :cond_39
    :goto_39
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_b

    .line 577
    :try_start_3d
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_4c} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_4c} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3d .. :try_end_4c} :catch_69

    goto :goto_b

    .line 578
    :catch_4d
    move-exception v1

    .line 580
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b

    .line 560
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_52
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #actionBarView:Lcom/android/internal/widget/ActionBarView;
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .restart local v0       #actionBarView:Lcom/android/internal/widget/ActionBarView;
    goto :goto_1f

    .line 570
    :catch_5f
    move-exception v1

    .line 572
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_39

    .line 581
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_64
    move-exception v1

    .line 583
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_b

    .line 584
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_69
    move-exception v1

    .line 586
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_b
.end method

.method private static setAddonViewFlags(Landroid/view/View;I)V
    .registers 6
    .parameter "view"
    .parameter "flags"

    .prologue
    .line 1484
    invoke-virtual {p0, p1}, Landroid/view/View;->setAddonViewFlags(I)V

    .line 1485
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 1486
    check-cast v1, Landroid/view/ViewGroup;

    .line 1487
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1488
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 1489
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setAddonViewFlags(Landroid/view/View;I)V

    .line 1488
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1492
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_1b
    return-void
.end method

.method private static supportedMultiWindow(Landroid/view/Window;)Z
    .registers 5
    .parameter "owner"

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 185
    .local v1, context:Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_16

    move-object v0, v1

    .line 186
    check-cast v0, Landroid/app/Activity;

    .line 187
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 188
    .local v2, windowMode:I
    const/high16 v3, 0x20

    and-int/2addr v3, v2

    if-eqz v3, :cond_16

    .line 189
    const/4 v3, 0x1

    .line 193
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #windowMode:I
    :goto_15
    return v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private updateSplitRect(I)V
    .registers 6
    .parameter "windowMode"

    .prologue
    .line 1515
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 1516
    .local v1, zone:I
    if-eqz v1, :cond_19

    .line 1517
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1518
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, v0, Landroid/content/res/Configuration;->centerBarRect:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 1520
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_19
    return-void
.end method

.method private windowIsTranslucent(I)Z
    .registers 5
    .parameter "windowMode"

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 247
    :goto_9
    return v1

    .line 246
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 247
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    goto :goto_9
.end method

.method private windowNoController(I)Z
    .registers 3
    .parameter "windowMode"

    .prologue
    .line 251
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private wrapContentView(I)V
    .registers 8
    .parameter "windowMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 609
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 611
    .local v0, decor:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_88

    .line 612
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    .line 613
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 615
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 616
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 617
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 621
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowNoController(I)Z

    move-result v1

    if-nez v1, :cond_88

    .line 622
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 623
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 624
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 626
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v4}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 627
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v5}, Landroid/gesture/GestureOverlayView;->setByPassingMode(Z)V

    .line 628
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addView(Landroid/view/View;)V

    .line 630
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 633
    :cond_88
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 634
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 635
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->makeOptionalFitsSystemWindows()V

    .line 637
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 638
    return-void
.end method


# virtual methods
.method public getSwitchToPreviousSizeWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .registers 7
    .parameter "ctx"

    .prologue
    const/4 v4, -0x2

    .line 1817
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    .line 1818
    .local v1, mButton:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->setHoverPopupType(I)V

    .line 1819
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1820
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1822
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-object v2
.end method

.method public isWfdConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    const-string v1, "wfd"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #wfdManager:Lcom/samsung/wfd/WfdManager;
    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 602
    .restart local v0       #wfdManager:Lcom/samsung/wfd/WfdManager;
    if-nez v0, :cond_d

    .line 603
    const/4 v1, 0x0

    .line 605
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v1

    goto :goto_c
.end method

.method minimize(IZ)V
    .registers 6
    .parameter "windowMode"
    .parameter "minimize"

    .prologue
    const/high16 v2, 0x200

    const/high16 v1, 0x100

    const v0, 0xffffff

    .line 381
    if-eqz p2, :cond_20

    .line 382
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 383
    and-int/2addr p1, v0

    .line 384
    or-int/2addr p1, v2

    .line 394
    :goto_d
    if-eqz p2, :cond_2d

    .line 395
    const/high16 v0, 0x10

    or-int/2addr p1, v0

    .line 396
    const v0, -0x800001

    and-int/2addr p1, v0

    .line 402
    :goto_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 404
    return-void

    .line 386
    :cond_20
    and-int/2addr p1, v0

    .line 387
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    if-ne v0, v1, :cond_2b

    .line 388
    or-int/2addr p1, v1

    goto :goto_d

    .line 390
    :cond_2b
    or-int/2addr p1, v2

    goto :goto_d

    .line 399
    :cond_2d
    const v0, -0x100001

    and-int/2addr p1, v0

    goto :goto_16
.end method

.method multiWindow(IZ)V
    .registers 6
    .parameter "windowMode"
    .parameter "pinup"

    .prologue
    .line 357
    const v1, 0xffffff

    and-int/2addr p1, v1

    .line 358
    const/high16 v1, 0x200

    or-int/2addr p1, v1

    .line 359
    if-eqz p2, :cond_39

    .line 360
    const/high16 v1, 0x80

    or-int/2addr p1, v1

    .line 361
    and-int/lit16 p1, p1, -0x100

    .line 366
    :goto_e
    const v1, -0x100001

    and-int/2addr p1, v1

    .line 368
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 370
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 371
    .local v0, winInfo:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.WINDOW_LAST_PINUP"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_30

    if-nez p2, :cond_30

    .line 373
    const-string v1, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 375
    :cond_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 378
    return-void

    .line 364
    .end local v0           #winInfo:Landroid/os/Bundle;
    :cond_39
    const v1, -0x800001

    and-int/2addr p1, v1

    goto :goto_e
.end method

.method normalWindow(I)V
    .registers 4
    .parameter "windowMode"

    .prologue
    .line 346
    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 347
    const/high16 v0, 0x100

    or-int/2addr p1, v0

    .line 348
    const v0, -0x800001

    and-int/2addr p1, v0

    .line 349
    const v0, -0x100001

    and-int/2addr p1, v0

    .line 350
    and-int/lit16 p1, p1, -0x100

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 354
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .parameter "newConfig"

    .prologue
    const/high16 v6, 0x80

    const/high16 v5, 0x10

    const v4, -0x100001

    const/4 v3, 0x1

    .line 1432
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1440
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 1441
    .local v0, windowMode:I
    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    const/high16 v2, 0x200

    if-eq v1, v2, :cond_1c

    .line 1481
    :goto_1b
    return-void

    .line 1445
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 1447
    iget v1, p1, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 1448
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    sparse-switch v1, :sswitch_data_62

    .line 1476
    :cond_2a
    :goto_2a
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1477
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1480
    :cond_33
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto :goto_1b

    .line 1450
    :sswitch_37
    or-int/2addr v0, v5

    .line 1451
    or-int/2addr v0, v6

    .line 1452
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_2a

    .line 1461
    :sswitch_3f
    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_2a

    .line 1462
    and-int/2addr v0, v4

    .line 1463
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_2a

    .line 1467
    :sswitch_4d
    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    and-int/2addr v1, v6

    if-nez v1, :cond_2a

    .line 1468
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 1469
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 1470
    and-int/2addr v0, v4

    .line 1471
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_2a

    .line 1448
    :sswitch_data_62
    .sparse-switch
        0x2 -> :sswitch_3f
        0x4 -> :sswitch_3f
        0x8 -> :sswitch_3f
        0x10 -> :sswitch_3f
        0x20 -> :sswitch_3f
        0x80 -> :sswitch_37
        0x100 -> :sswitch_3f
        0x200 -> :sswitch_4d
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 597
    :cond_e
    return-void
.end method

.method public onWindowAttributesChanged(II)V
    .registers 5
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 1573
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    if-eq v0, p1, :cond_10

    .line 1577
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 1578
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 1581
    :cond_10
    return-void
.end method

.method public onWindowStatusChanged(II)V
    .registers 12
    .parameter "windowMode"
    .parameter "windowInfoChanged"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1523
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1570
    :goto_a
    return-void

    .line 1527
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 1529
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1530
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->closeAllPanels()V

    .line 1533
    :cond_1b
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_26

    .line 1534
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 1535
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    goto :goto_a

    .line 1539
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 1540
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1542
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 1544
    const/4 v1, 0x0

    .line 1545
    .local v1, isNormalWindow:Z
    const/4 v0, 0x0

    .line 1546
    .local v0, isMinimized:Z
    const/4 v2, 0x0

    .line 1548
    .local v2, isPinup:Z
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_82

    .line 1560
    :goto_3c
    if-eqz v1, :cond_59

    .line 1561
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 1562
    .local v3, km:Landroid/app/KeyguardManager;
    if-eqz v3, :cond_76

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 1563
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    .line 1569
    .end local v3           #km:Landroid/app/KeyguardManager;
    :cond_59
    :goto_59
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1, v0, v2}, Landroid/app/Activity;->onWindowStatusChanged(ZZZ)V

    goto :goto_a

    .line 1550
    :sswitch_5f
    const/4 v1, 0x1

    .line 1551
    goto :goto_3c

    .line 1554
    :sswitch_61
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v4

    .line 1555
    .local v4, params:I
    const/high16 v7, 0x10

    and-int/2addr v7, v4

    if-eqz v7, :cond_72

    move v0, v5

    .line 1556
    :goto_6b
    const/high16 v7, 0x80

    and-int/2addr v7, v4

    if-eqz v7, :cond_74

    move v2, v5

    :goto_71
    goto :goto_3c

    :cond_72
    move v0, v6

    .line 1555
    goto :goto_6b

    :cond_74
    move v2, v6

    .line 1556
    goto :goto_71

    .line 1564
    .end local v4           #params:I
    .restart local v3       #km:Landroid/app/KeyguardManager;
    :cond_76
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isWfdConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_59

    .line 1565
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto :goto_59

    .line 1548
    :sswitch_data_82
    .sparse-switch
        0x1000000 -> :sswitch_5f
        0x2000000 -> :sswitch_61
    .end sparse-switch
.end method

.method setDecorPadding(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 849
    :cond_9
    return-void
.end method

.method setDecorVisibility(I)V
    .registers 10
    .parameter "windowMode"

    .prologue
    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 864
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 866
    .local v0, decor:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v3, :cond_15

    .line 867
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 870
    :cond_15
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 872
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowNoController(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 974
    :cond_21
    :goto_21
    return-void

    .line 876
    :cond_22
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2d

    .line 877
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 880
    :cond_2d
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    const v4, 0x1080530

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 881
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 884
    .local v1, option:I
    const/high16 v3, 0x10

    and-int/2addr v3, v1

    if-nez v3, :cond_d2

    .line 886
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x1080536

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 887
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 888
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 889
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 891
    const/high16 v3, 0x80

    and-int/2addr v3, v1

    if-eqz v3, :cond_c9

    .line 892
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v4, 0x1080526

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 898
    :goto_6c
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-eqz v3, :cond_7a

    .line 899
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 900
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 903
    :cond_7a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 904
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 906
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 926
    :goto_89
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 927
    invoke-virtual {p0, v6, v5, v6, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    .line 929
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->needsMultiWindowPadding()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 930
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->calculatePaddingRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 931
    .local v2, paddingRect:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    .line 966
    .end local v1           #option:I
    .end local v2           #paddingRect:Landroid/graphics/Rect;
    :cond_ac
    :goto_ac
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-nez v3, :cond_ba

    .line 967
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 971
    :cond_ba
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    if-eqz v3, :cond_21

    .line 972
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->setEnabled(Z)V

    goto/16 :goto_21

    .line 895
    .restart local v1       #option:I
    :cond_c9
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v4, 0x1080525

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_6c

    .line 910
    :cond_d2
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x1080535

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 911
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 913
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 914
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-eqz v3, :cond_f7

    .line 915
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 916
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 919
    :cond_f7
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 920
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 922
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 923
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setTouchReceiver(Z)V

    goto :goto_89

    .line 936
    .end local v1           #option:I
    :cond_10a
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowNoController(I)Z

    move-result v3

    if-nez v3, :cond_21

    .line 940
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_11b

    .line 941
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    :cond_11b
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 947
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x1080534

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 948
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 949
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 950
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 951
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-eqz v3, :cond_145

    .line 952
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 953
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 956
    :cond_145
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 957
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 959
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 961
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setTouchReceiver(Z)V

    .line 963
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 964
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    goto/16 :goto_ac
.end method

.method setDisplayStub(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 1894
    return-void
.end method

.method setTouchReceiver(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    .line 853
    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-nez v1, :cond_19

    .line 854
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 855
    .local v0, mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.multiwindow.MW_TOUCH_DETECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 861
    .end local v0           #mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    :cond_18
    :goto_18
    return-void

    .line 857
    :cond_19
    if-nez p1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-eqz v1, :cond_18

    .line 858
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 859
    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    goto :goto_18
.end method

.method setWindowParams(I)V
    .registers 13
    .parameter "windowMode"

    .prologue
    const/16 v10, 0x33

    const/4 v9, -0x1

    const v8, -0x10321

    const v7, -0x10401

    const/4 v6, 0x0

    .line 776
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 777
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 778
    .local v3, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v5, :cond_32

    sget-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    if-eqz v5, :cond_32

    .line 779
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 780
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_32

    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_32

    .line 781
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    .line 785
    :cond_32
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 786
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 787
    .local v4, winInfo:Landroid/os/Bundle;
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v2

    .line 789
    .local v2, newSize:Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 790
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 792
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isFullSize(I)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 793
    :cond_56
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 794
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 801
    :goto_62
    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 803
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v7

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 804
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x320

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 808
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 810
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v7

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 811
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x320

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 837
    .end local v2           #newSize:Landroid/graphics/Rect;
    .end local v4           #winInfo:Landroid/os/Bundle;
    :goto_7c
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 838
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 840
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v5, :cond_93

    .line 841
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 843
    :cond_93
    return-void

    .line 797
    .restart local v2       #newSize:Landroid/graphics/Rect;
    .restart local v4       #winInfo:Landroid/os/Bundle;
    :cond_94
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 798
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_62

    .line 816
    .end local v2           #newSize:Landroid/graphics/Rect;
    .end local v4           #winInfo:Landroid/os/Bundle;
    :cond_a1
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 817
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 818
    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 819
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 820
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 822
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v8

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 827
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 829
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 830
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v8

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 835
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_7c
.end method
