.class public Lcom/android/systemui/multiwindow/MultiWindowListPanel;
.super Landroid/widget/RelativeLayout;
.source "MultiWindowListPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;,
        Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "Tablet/MultiWindowListPanel"


# instance fields
.field private mAdapter:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

.field private mChoreo:Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mList:Landroid/widget/ListView;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mShowing:Z

.field private mStatusBarHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;-><init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;

    .line 151
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$1;-><init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 175
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 176
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 177
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 179
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mShowing:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 85
    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->setWillNotDraw(Z)V

    .line 87
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mContentParent:Landroid/view/ViewGroup;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 90
    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mList:Landroid/widget/ListView;

    .line 91
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f030014

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;-><init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mAdapter:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mAdapter:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mAdapter:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mShowing:Z

    .line 98
    return-void
.end method

.method public setStatusBarHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mStatusBarHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method public show(ZZ)V
    .locals 3
    .parameter "show"
    .parameter "animate"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mShowing:Z

    if-ne v0, p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mShowing:Z

    .line 106
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mAdapter:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 107
    if-eqz p1, :cond_6

    .line 109
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mAdapter:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->updateList()V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mAdapter:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mAdapter:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->notifyDataSetChanged()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mAdapter:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 118
    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 121
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->setVisibility(I)V

    goto :goto_0

    .line 124
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mShowing:Z

    .line 125
    if-eqz p2, :cond_5

    .line 126
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->startAnimation(Z)V

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mStatusBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mStatusBarHandler:Landroid/os/Handler;

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->MSG_CLOSE_MINI_MODE_APPS_PANEL:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mStatusBarHandler:Landroid/os/Handler;

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->MSG_CLOSE_MINI_MODE_APPS_PANEL:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 128
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_6
    if-eqz p2, :cond_7

    .line 138
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->startAnimation(Z)V

    goto :goto_0

    .line 140
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->setVisibility(I)V

    goto :goto_0
.end method
