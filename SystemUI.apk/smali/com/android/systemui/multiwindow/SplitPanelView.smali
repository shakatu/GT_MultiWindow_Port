.class public Lcom/android/systemui/multiwindow/SplitPanelView;
.super Landroid/widget/RelativeLayout;
.source "SplitPanelView.java"


# static fields
.field private static final MODE_FULL:I

.field private static final MODE_SPLIT:I

.field private static final MODE_SPLIT3L:I

.field private static final MODE_SPLIT3R:I

.field private static final MODE_SPLIT4:I

.field private static sArrangeField:Ljava/lang/reflect/Field;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIVBtnFull:Landroid/widget/ImageView;

.field private mIVBtnSplit:Landroid/widget/ImageView;

.field private mIVBtnSplit3L:Landroid/widget/ImageView;

.field private mIVBtnSplit3R:Landroid/widget/ImageView;

.field private mIVBtnSplit4:Landroid/widget/ImageView;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mL_Count:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftMaxNum:I

.field private mMiddleSmallViews:Landroid/view/ViewGroup;

.field private mMiddleViews:Landroid/view/ViewGroup;

.field private mMiddleViews_l:Landroid/view/ViewGroup;

.field private mMiddleViews_r:Landroid/view/ViewGroup;

.field private mOldSplitMode:I

.field private mOnClick:Landroid/view/View$OnClickListener;

.field private mOnLongClick:Landroid/view/View$OnLongClickListener;

.field private mOnMidSmallDrag:Landroid/view/View$OnDragListener;

.field private mR_Count:I

.field private mRightMaxNum:I

.field private mRunningTaskLoader:Lcom/android/systemui/multiwindow/RunningTasksLoader;

.field private mSmallViews:Landroid/view/ViewGroup;

.field private mSourceIndex:I

.field private mSourceView:Landroid/view/View;

.field private mSplitMode:I

.field private mTargetIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_FULL:I

    sput v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_FULL:I

    .line 51
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    sput v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT:I

    .line 52
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED3L:I

    sput v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3L:I

    .line 53
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED3R:I

    sput v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3R:I

    .line 54
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED4:I

    sput v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT4:I

    .line 781
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/multiwindow/SplitPanelView;->sArrangeField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget v2, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT:I

    iput v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mLeftMaxNum:I

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mRightMaxNum:I

    .line 515
    new-instance v2, Lcom/android/systemui/multiwindow/SplitPanelView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/SplitPanelView$2;-><init>(Lcom/android/systemui/multiwindow/SplitPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnClick:Landroid/view/View$OnClickListener;

    .line 545
    new-instance v2, Lcom/android/systemui/multiwindow/SplitPanelView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/SplitPanelView$3;-><init>(Lcom/android/systemui/multiwindow/SplitPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 554
    new-instance v2, Lcom/android/systemui/multiwindow/SplitPanelView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/SplitPanelView$4;-><init>(Lcom/android/systemui/multiwindow/SplitPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnMidSmallDrag:Landroid/view/View$OnDragListener;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mContext:Landroid/content/Context;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 74
    new-instance v2, Lcom/android/systemui/multiwindow/RunningTasksLoader;

    invoke-direct {v2, p1}, Lcom/android/systemui/multiwindow/RunningTasksLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mRunningTaskLoader:Lcom/android/systemui/multiwindow/RunningTasksLoader;

    .line 75
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mRunningTaskLoader:Lcom/android/systemui/multiwindow/RunningTasksLoader;

    invoke-virtual {v2, p0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setSplitPanel(Lcom/android/systemui/multiwindow/SplitPanelView;)V

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->GESTURE_PINCH_OPEN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->GESTURE_PINCH_CLOSE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/multiwindow/SplitPanelView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/multiwindow/SplitPanelView$1;-><init>(Lcom/android/systemui/multiwindow/SplitPanelView;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 109
    .local v1, keyguardMgr:Landroid/app/KeyguardManager;
    const-string v2, "SplitPanel"

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/SplitPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/multiwindow/SplitPanelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/multiwindow/SplitPanelView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/SplitPanelView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/multiwindow/SplitPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/multiwindow/SplitPanelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/multiwindow/SplitPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mTargetIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/multiwindow/SplitPanelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mTargetIndex:I

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_FULL:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3L:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3R:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT4:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/SplitPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOldSplitMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/multiwindow/SplitPanelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOldSplitMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/SplitPanelView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/SplitPanelView;->clearPreviousButton(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/SplitPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/SplitPanelView;->setNextButton()V

    return-void
.end method

.method private clearPreviousButton(I)V
    .locals 2
    .parameter "previousMode"

    .prologue
    .line 822
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_FULL:I

    if-ne p1, v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnFull:Landroid/widget/ImageView;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT:I

    if-ne p1, v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit:Landroid/widget/ImageView;

    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 826
    :cond_2
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3L:I

    if-ne p1, v0, :cond_3

    .line 827
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit3L:Landroid/widget/ImageView;

    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 828
    :cond_3
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3R:I

    if-ne p1, v0, :cond_4

    .line 829
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit3R:Landroid/widget/ImageView;

    const v1, 0x7f02015f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 830
    :cond_4
    sget v0, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT4:I

    if-ne p1, v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit4:Landroid/widget/ImageView;

    const v1, 0x7f020161

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static getArrangeMode(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "config"

    .prologue
    .line 784
    :try_start_0
    sget-object v1, Lcom/android/systemui/multiwindow/SplitPanelView;->sArrangeField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 785
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "arrange"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/multiwindow/SplitPanelView;->sArrangeField:Ljava/lang/reflect/Field;

    .line 787
    :cond_0
    sget-object v1, Lcom/android/systemui/multiwindow/SplitPanelView;->sArrangeField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 795
    :goto_0
    return v1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 795
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 790
    :catch_1
    move-exception v0

    .line 791
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 792
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 793
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private getTasksInfoToArrange()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v1, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_FULL:I

    if-ne v4, v5, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-object v1

    .line 200
    :cond_1
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT:I

    if-ne v4, v5, :cond_3

    .line 202
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 204
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 205
    .local v0, task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_2

    .line 206
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 207
    .local v3, windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 208
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    or-int/2addr v3, v4

    .line 209
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 210
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 215
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 216
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 217
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_0

    .line 218
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 219
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 220
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    or-int/2addr v3, v4

    .line 221
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 222
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_3
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3L:I

    if-ne v4, v5, :cond_6

    .line 227
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 228
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 229
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 230
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_4

    .line 231
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 232
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 233
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    or-int/2addr v3, v4

    .line 234
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 235
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 240
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 241
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 242
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_5

    .line 243
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 244
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 245
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

    or-int/2addr v3, v4

    .line 246
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 247
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v4, v8, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 253
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 254
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_0

    .line 255
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 256
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 257
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

    or-int/2addr v3, v4

    .line 258
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 259
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 262
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_6
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3R:I

    if-ne v4, v5, :cond_9

    .line 264
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 265
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 266
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 267
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_7

    .line 268
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 269
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 270
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

    or-int/2addr v3, v4

    .line 271
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 272
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v4, v8, :cond_8

    .line 277
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 278
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 279
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_8

    .line 280
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 281
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 282
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

    or-int/2addr v3, v4

    .line 283
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 284
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 290
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 291
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_0

    .line 292
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 293
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 294
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    or-int/2addr v3, v4

    .line 295
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 296
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 299
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_9
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT4:I

    if-ne v4, v5, :cond_0

    .line 301
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_a

    .line 302
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 303
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 304
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_a

    .line 305
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 306
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 307
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

    or-int/2addr v3, v4

    .line 308
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 309
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v4, v8, :cond_b

    .line 314
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 315
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 316
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_b

    .line 317
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 318
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 319
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

    or-int/2addr v3, v4

    .line 320
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 321
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_c

    .line 326
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 327
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 328
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_c

    .line 329
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 330
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 331
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

    or-int/2addr v3, v4

    .line 332
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 333
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v0           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #windowMode:I
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v4, v8, :cond_0

    .line 338
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 339
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 340
    .restart local v0       #task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz v4, :cond_0

    .line 341
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    .line 342
    .restart local v3       #windowMode:I
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 343
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

    or-int/2addr v3, v4

    .line 344
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 345
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private refreshSmallViews()V
    .locals 6

    .prologue
    .line 836
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 837
    .local v2, smallViewsSize:I
    const/4 v0, 0x0

    .line 839
    .local v0, howMany:I
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_FULL:I

    if-ne v4, v5, :cond_1

    .line 840
    const/4 v0, 0x1

    .line 851
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 852
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d010f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 853
    .local v3, v:Landroid/view/View;
    if-ge v1, v0, :cond_5

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 841
    .end local v1           #i:I
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT:I

    if-ne v4, v5, :cond_2

    .line 842
    const/4 v0, 0x2

    goto :goto_0

    .line 843
    :cond_2
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3L:I

    if-ne v4, v5, :cond_3

    .line 844
    const/4 v0, 0x3

    goto :goto_0

    .line 845
    :cond_3
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3R:I

    if-ne v4, v5, :cond_4

    .line 846
    const/4 v0, 0x3

    goto :goto_0

    .line 847
    :cond_4
    iget v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v5, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT4:I

    if-ne v4, v5, :cond_0

    .line 848
    const/4 v0, 0x4

    goto :goto_0

    .line 853
    .restart local v1       #i:I
    .restart local v3       #v:Landroid/view/View;
    :cond_5
    const/16 v4, 0x8

    goto :goto_2

    .line 855
    .end local v3           #v:Landroid/view/View;
    :cond_6
    return-void
.end method

.method private refreshVisibility()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 472
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 473
    .local v0, l_count:I
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 475
    .local v1, r_count:I
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 476
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v6, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_FULL:I

    if-eq v5, v6, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 478
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnFull:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/SplitPanelView;->refreshSmallViews()V

    .line 481
    return-void

    :cond_0
    move v2, v3

    .line 476
    goto :goto_0
.end method

.method private setListeners()V
    .locals 7

    .prologue
    .line 132
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 133
    .local v2, midSmallGroupChildLeftSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 134
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 135
    .local v4, v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 136
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnMidSmallDrag:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v4           #v:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 140
    .local v3, midSmallGroupChildRightSize:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 141
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 142
    .restart local v4       #v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 143
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnMidSmallDrag:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v4           #v:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 147
    .local v1, midSmallGroupChild2Size:I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 148
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 149
    .restart local v4       #v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 150
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnMidSmallDrag:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 153
    .end local v4           #v:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnFull:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit3L:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit3R:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit4:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method private setNextButton()V
    .locals 2

    .prologue
    .line 808
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v1, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_FULL:I

    if-ne v0, v1, :cond_1

    .line 809
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnFull:Landroid/widget/ImageView;

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v1, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT:I

    if-ne v0, v1, :cond_2

    .line 811
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit:Landroid/widget/ImageView;

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 812
    :cond_2
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v1, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3L:I

    if-ne v0, v1, :cond_3

    .line 813
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit3L:Landroid/widget/ImageView;

    const v1, 0x7f02015e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 814
    :cond_3
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v1, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3R:I

    if-ne v0, v1, :cond_4

    .line 815
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit3R:Landroid/widget/ImageView;

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 816
    :cond_4
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v1, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT4:I

    if-ne v0, v1, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit4:Landroid/widget/ImageView;

    const v1, 0x7f020162

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;
    .locals 7
    .parameter "parent"
    .parameter "task"
    .parameter "width"
    .parameter "height"
    .parameter "matchParent"

    .prologue
    .line 354
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZI)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZI)Landroid/view/View;
    .locals 6
    .parameter "parent"
    .parameter "task"
    .parameter "width"
    .parameter "height"
    .parameter "matchParent"
    .parameter "index"

    .prologue
    .line 358
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030038

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 359
    .local v2, vg:Landroid/view/View;
    const v3, 0x7f0d010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 360
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 361
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 363
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 364
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 365
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 366
    if-eqz p5, :cond_0

    .line 367
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 369
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    invoke-virtual {p1, v2, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 372
    return-object v2
.end method

.method public makeRunningTasks(Z)Z
    .locals 27
    .parameter "useCurrentState"

    .prologue
    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mRunningTaskLoader:Lcom/android/systemui/multiwindow/RunningTasksLoader;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->initRunningTasks()V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mRunningTaskLoader:Lcom/android/systemui/multiwindow/RunningTasksLoader;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getRunningTasks()Ljava/util/ArrayList;

    move-result-object v25

    .line 378
    .local v25, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitPanelView;->getTasksInfoToArrange()Ljava/util/ArrayList;

    move-result-object v20

    .line 379
    .local v20, needToReorderedTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v26, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez p1, :cond_3

    .line 382
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 383
    .local v24, rt:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 384
    .local v21, nt:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_1

    .line 385
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #nt:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v24           #rt:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 393
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    .local v17, i:I
    :goto_1
    if-ltz v17, :cond_3

    .line 394
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 393
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 398
    .end local v17           #i:I
    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 399
    const/4 v2, 0x0

    .line 468
    :goto_2
    return v2

    .line 402
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 405
    new-instance v4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 406
    .local v4, dummyTask:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;

    move-result-object v13

    .line 407
    .local v13, dummyL0:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;

    move-result-object v14

    .line 408
    .local v14, dummyL1:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;

    move-result-object v15

    .line 409
    .local v15, dummyR0:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;

    move-result-object v16

    .line 411
    .local v16, dummyR1:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v3, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_FULL:I

    if-ne v2, v3, :cond_7

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    :cond_5
    :goto_3
    const/4 v12, 0x0

    .line 426
    .local v12, currentMask:I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 427
    .local v7, t:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {v7}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->option(I)I

    move-result v23

    .line 428
    .local v23, options:I
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    and-int v22, v23, v2

    .line 430
    .local v22, obscureMask:I
    and-int v2, v12, v22

    move/from16 v0, v22

    if-eq v2, v0, :cond_6

    .line 434
    or-int v12, v12, v22

    .line 436
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_b

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;

    goto :goto_4

    .line 415
    .end local v7           #t:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v12           #currentMask:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #obscureMask:I
    .end local v23           #options:I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v3, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT:I

    if-ne v2, v3, :cond_8

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 418
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v3, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3L:I

    if-ne v2, v3, :cond_9

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 420
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v3, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT3R:I

    if-ne v2, v3, :cond_a

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 422
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    sget v3, Lcom/android/systemui/multiwindow/SplitPanelView;->MODE_SPLIT4:I

    if-ne v2, v3, :cond_5

    goto/16 :goto_3

    .line 440
    .restart local v7       #t:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v12       #currentMask:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v22       #obscureMask:I
    .restart local v23       #options:I
    :cond_b
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_c

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;

    goto/16 :goto_4

    .line 444
    :cond_c
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_d

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZI)Landroid/view/View;

    goto/16 :goto_4

    .line 447
    :cond_d
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_e

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;

    goto/16 :goto_4

    .line 450
    :cond_e
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_f

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZI)Landroid/view/View;

    goto/16 :goto_4

    .line 453
    :cond_f
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_6

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;

    goto/16 :goto_4

    .line 460
    .end local v7           #t:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v22           #obscureMask:I
    .end local v23           #options:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 461
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 462
    .restart local v7       #t:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    const/16 v8, 0x62

    const/16 v9, 0x72

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/multiwindow/SplitPanelView;->createTaskView(Landroid/view/ViewGroup;Landroid/app/ActivityManager$RunningTaskInfo;IIZ)Landroid/view/View;

    goto :goto_5

    .line 465
    .end local v7           #t:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitPanelView;->setListeners()V

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitPanelView;->refreshVisibility()V

    .line 468
    const/4 v2, 0x1

    goto/16 :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 113
    const v0, 0x7f0d010a

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleSmallViews:Landroid/view/ViewGroup;

    .line 114
    const v0, 0x7f0d010b

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews:Landroid/view/ViewGroup;

    .line 115
    const v0, 0x7f0d010c

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    .line 116
    const v0, 0x7f0d010d

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    .line 117
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    .line 119
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnFull:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0d0107

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit3L:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f0d0106

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit3R:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mIVBtnSplit4:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    return-void
.end method

.method onTaskThumbnailLoaded(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .parameter "td"

    .prologue
    .line 484
    monitor-enter p1

    .line 486
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 487
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_l:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 488
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 489
    const v3, 0x7f0d010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 490
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 496
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mMiddleViews_r:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 497
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_4

    .line 498
    const v3, 0x7f0d010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 499
    .restart local v1       #iv:Landroid/widget/ImageView;
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 504
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 505
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSmallViews:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 506
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_5

    .line 507
    const v3, 0x7f0d010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 508
    .restart local v1       #iv:Landroid/widget/ImageView;
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 512
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #v:Landroid/view/View;
    :cond_2
    monitor-exit p1

    .line 513
    return-void

    .line 486
    .restart local v2       #v:Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 504
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 512
    .end local v2           #v:Landroid/view/View;
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method sendEvent(IIIJ)V
    .locals 13
    .parameter "code"
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 799
    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v3, p3, 0x8

    or-int/lit8 v11, v3, 0x40

    const/16 v12, 0x101

    move-wide/from16 v3, p4

    move v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 803
    .local v0, ev:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 805
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_2

    .line 164
    iget v1, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOldSplitMode:I

    .line 165
    .local v1, previousMode:I
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitPanelView;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mSplitMode:I

    iput v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mOldSplitMode:I

    .line 167
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/SplitPanelView;->makeRunningTasks(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    .end local v1           #previousMode:I
    :goto_0
    return-void

    .line 172
    .restart local v1       #previousMode:I
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/multiwindow/SplitPanelView;->clearPreviousButton(I)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/SplitPanelView;->setNextButton()V

    .line 174
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v3}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 188
    .end local v1           #previousMode:I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitPanelView;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v3}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/SplitPanelView;->getTasksInfoToArrange()Ljava/util/ArrayList;

    move-result-object v2

    .line 179
    .local v2, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 181
    :try_start_0
    invoke-static {v2}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->updateTasksOrder(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
