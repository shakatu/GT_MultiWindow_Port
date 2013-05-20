.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchGoogleButton;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$SmartSwitcherRecentsView;,
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final INTENT_ACTION_TASK_MANAGER:Ljava/lang/String; = "com.sec.android.app.controlpanel.MAIN"

.field static final TAG:Ljava/lang/String; = "RecentsPanelView"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mHideRecentsAfterThumbnailScaleUpStarted:Z

.field private mHighEndGfx:Z

.field private mIsTaskManagerInstalled:Z

.field private mMultiWindowEnabled:Z

.field private mNoRecentApp:Landroid/widget/TextView;

.field mPlaceholderThumbnail:Landroid/widget/ImageView;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPreloadTasksRunnable:Ljava/lang/Runnable;

.field private mReadyToDisappear:Z

.field private mReadyToShow:Z

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksDirty:Z

.field private mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsGoogleButton:Landroid/view/View;

.field private mRecentsLaunchButton:Landroid/view/View;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsRemoveAllButton:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShowRecentGoogleNowButton:Z

.field private mShowRecentRemoveAllButton:Z

.field private mShowing:Z

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

.field mThumbnailScaleUpStarted:Z

.field mTransitionBg:Landroid/view/View;

.field private mUseTouchWizGUI:Z

.field mVisibilityChangedListener:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;

.field private mWaitingToShow:Z

.field private mWaitingToShowAnimated:Z

.field private mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mMultiWindowEnabled:Z

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    .line 156
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHandler:Landroid/os/Handler;

    .line 172
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateValuesFromResources()V

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    .line 178
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    .line 180
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->isTaskManagerInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    .line 192
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/Utilities;->isMultiWindowEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mMultiWindowEnabled:Z

    .line 196
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    .line 184
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    .line 185
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToDisappear:Z

    return p1
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3
    .parameter "transitioner"

    .prologue
    .line 589
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 590
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 591
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 592
    return-void
.end method

.method private isTaskManagerInstalled()Z
    .locals 5

    .prologue
    .line 862
    const/4 v3, 0x0

    .line 863
    .local v3, retVal:Z
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 864
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.controlpanel.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 867
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 868
    const/4 v3, 0x1

    .line 870
    :cond_0
    return v3
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    .line 217
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 218
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 219
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 220
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 221
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p1, recentTasksList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    if-eqz v0, :cond_0

    .line 657
    if-eqz p1, :cond_1

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;)V

    .line 663
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 665
    :cond_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 256
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 3

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToShow:Z

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShowAnimated:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->show(ZZLjava/util/ArrayList;)V

    .line 253
    :cond_0
    return-void
.end method

.method private updateUiElements(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    .line 701
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 703
    .local v0, items:I
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-lez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 706
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 708
    .local v1, numRecentApps:I
    if-nez v1, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, recentAppsAccessibilityDescription:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 716
    return-void

    .line 703
    .end local v1           #numRecentApps:I
    .end local v2           #recentAppsAccessibilityDescription:Ljava/lang/String;
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 712
    .restart local v1       #numRecentApps:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #recentAppsAccessibilityDescription:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->cancelLoadingTasks()V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 633
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->terminateSlide()V

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 641
    :cond_1
    return-void
.end method

.method public clearSlideWindow()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->terminateSlide()V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    .line 648
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->hide(Z)V

    .line 382
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 410
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 411
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 412
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 414
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getRecentTasksList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleOnClick(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 7
    .parameter "selectedInfo"

    .prologue
    const/4 v6, 0x1

    .line 878
    if-eqz p1, :cond_0

    .line 879
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 881
    .local v0, am:Landroid/app/ActivityManager;
    iput-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToDisappear:Z

    .line 882
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f04

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 883
    .local v2, opts:Landroid/app/ActivityOptions;
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getTaskId()I

    move-result v3

    if-ltz v3, :cond_1

    .line 885
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getTaskId()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3, v6, v4}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 895
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$2;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 904
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #opts:Landroid/app/ActivityOptions;
    :cond_0
    return-void

    .line 888
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v2       #opts:Landroid/app/ActivityOptions;
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 889
    .local v1, intent:Landroid/content/Intent;
    const v3, 0x10104000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 893
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public handleState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 927
    return-void
.end method

.method public handleSwipe(Lcom/android/systemui/recent/TaskDescription;I)V
    .locals 4
    .parameter "selectedInfo"
    .parameter "slideIndex"

    .prologue
    .line 911
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 912
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getPersistentTaskId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 913
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 914
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/TaskDescription;

    .line 915
    .local v1, td:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recent/TaskDescription;->getPersistentTaskId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getPersistentTaskId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 916
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 920
    .end local v1           #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_0
    return-void
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapse(I)V

    .line 392
    :cond_1
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 721
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mThumbnailScaleUpStarted:Z

    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    .line 729
    :goto_0
    return-void

    .line 724
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mTransitionBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPlaceholderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHideRecentsAfterThumbnailScaleUpStarted:Z

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyToDisappear()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToDisappear:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 493
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 495
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 496
    const v2, 0x7f0d0027

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 498
    const v2, 0x7f0d00b7

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/StatusBarTouchProxy;

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    .line 500
    const v2, 0x7f0d0026

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 501
    const v2, 0x7f0d002b

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 504
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v2, :cond_3

    .line 505
    const v2, 0x7f0d0028

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    .line 506
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v2, :cond_0

    .line 507
    const v2, 0x7f0d0029

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    .line 509
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v2, :cond_1

    .line 510
    const v2, 0x7f0d002a

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 519
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 521
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 523
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 527
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchGoogleButton;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 532
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v2, :cond_3

    .line 536
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 545
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 553
    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 554
    const v2, 0x7f0d00f3

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    .line 557
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 558
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 560
    .local v0, d:Landroid/view/Display;
    invoke-static {v0}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHighEndGfx:Z

    .line 561
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mHighEndGfx:Z

    if-nez v2, :cond_6

    .line 562
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 570
    .end local v0           #d:Landroid/view/Display;
    :cond_5
    :goto_0
    new-instance v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    .line 583
    return-void

    .line 563
    .restart local v0       #d:Landroid/view/Display;
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_5

    .line 566
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 733
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_pen_gesture"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 734
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 742
    :cond_0
    :goto_0
    return v0

    .line 739
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-nez v1, :cond_0

    .line 742
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 751
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    .line 752
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 755
    :cond_1
    const/4 v0, 0x1

    .line 758
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 209
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->show(ZZ)V

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 401
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 402
    return-void
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 670
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 675
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->updateUiElements(Landroid/content/res/Configuration;)V

    .line 677
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 678
    new-instance v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    .line 679
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    if-eqz v3, :cond_0

    .line 680
    const/4 v2, 0x1

    .line 681
    .local v2, translucent:Z
    const/16 v0, 0x10

    .line 682
    .local v0, depth:I
    const/16 v1, 0x8

    .line 683
    .local v1, stencil:I
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->initialize(ZII)V

    .line 684
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->setCallback(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;)V

    .line 685
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->setItemList(Ljava/util/ArrayList;)V

    .line 686
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->onResume()V

    .line 688
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 692
    .end local v0           #depth:I
    .end local v1           #stencil:I
    .end local v2           #translucent:Z
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToShow:Z

    .line 693
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->showIfReady()V

    .line 694
    return-void

    .line 672
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "ev"

    .prologue
    const/16 v2, 0x8

    .line 600
    iget-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-nez v1, :cond_0

    .line 601
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 602
    .local v0, action:I
    if-nez v0, :cond_1

    .line 603
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->post(Ljava/lang/Runnable;)Z

    .line 618
    .end local v0           #action:I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 604
    .restart local v0       #action:I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 605
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 606
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->clearRecentTasksList()V

    .line 608
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 609
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 614
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public preloadRecentTasksList()V
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 625
    :cond_0
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;)V

    .line 652
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 766
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 769
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 774
    :cond_1
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 431
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 0
    .parameter "minAlpha"

    .prologue
    .line 586
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    .line 446
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    .line 441
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1
    .parameter "statusBarView"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    .line 437
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mVisibilityChangedListener:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnRecentsPanelVisibilityChangedListener;->onRecentsPanelVisibilityChanged(Z)V

    .line 452
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 453
    return-void

    .line 450
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 1
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v0, 0x0

    .line 235
    if-eqz p1, :cond_0

    .line 236
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;)V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShow:Z

    .line 238
    iput-boolean p2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShowAnimated:Z

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->showIfReady()V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->show(ZZLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public show(ZZLjava/util/ArrayList;)V
    .locals 7
    .parameter "show"
    .parameter "animate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, recentTaskDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v2, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 266
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    const-string v5, "recentapps"

    invoke-static {v4, v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    if-eqz p1, :cond_a

    .line 270
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 271
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0, v6}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 378
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;)V

    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, noApps:Z
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 289
    const/4 v1, 0x1

    .line 291
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 292
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 293
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v2, :cond_4

    .line 297
    if-eqz v1, :cond_8

    .line 298
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 321
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v2, :cond_6

    .line 322
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v2, :cond_5

    .line 324
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v2, :cond_6

    .line 326
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 355
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v1           #noApps:Z
    :cond_6
    :goto_2
    if-eqz p2, :cond_c

    .line 356
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-eq v2, p1, :cond_7

    .line 357
    iput-boolean p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    .line 358
    if-eqz p1, :cond_7

    .line 359
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 369
    :cond_7
    :goto_3
    if-eqz p1, :cond_e

    .line 370
    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setFocusable(Z)V

    .line 371
    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setFocusableInTouchMode(Z)V

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->requestFocus()Z

    goto :goto_0

    .line 300
    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .restart local v1       #noApps:Z
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 305
    :cond_9
    if-eqz v1, :cond_4

    .line 311
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->cancelLoadingTasks()V

    .line 312
    iput-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 314
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShow:Z

    .line 315
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToShow:Z

    goto :goto_0

    .line 333
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v1           #noApps:Z
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->cancelLoadingTasks()V

    .line 334
    iput-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTasksDirty:Z

    .line 335
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mWaitingToShow:Z

    .line 336
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mReadyToShow:Z

    .line 339
    iget-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v4, :cond_6

    .line 340
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v4, :cond_b

    .line 342
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :cond_b
    iget-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v4, :cond_6

    .line 344
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 363
    :cond_c
    iput-boolean p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    .line 364
    if-eqz p1, :cond_d

    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->setVisibility(I)V

    .line 365
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowing:Z

    if-nez v2, :cond_7

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->clearRecentTasksList()V

    goto :goto_3

    .line 364
    :cond_d
    const/16 v3, 0x8

    goto :goto_4

    .line 374
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    goto/16 :goto_0
.end method

.method public updateValuesFromResources()V
    .locals 3

    .prologue
    const v2, 0x7f0201cd

    .line 457
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 466
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentGoogleNowButton:Z

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 468
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 476
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 478
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 485
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 489
    :cond_3
    return-void

    .line 461
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsLaunchButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 480
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentsRemoveAllButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method
