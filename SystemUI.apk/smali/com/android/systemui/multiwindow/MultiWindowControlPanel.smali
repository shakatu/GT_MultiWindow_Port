.class public Lcom/android/systemui/multiwindow/MultiWindowControlPanel;
.super Landroid/widget/RelativeLayout;
.source "MultiWindowControlPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;
    }
.end annotation


# static fields
.field static final ACTION_ARRANGE_WINDOWS:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field static final ARRANGE_CASCADE:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final ARRANGE_SPLITED:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final ARRANGE_SPLITED3L:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final ARRANGE_SPLITED3R:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final ARRANGE_SPLITED4:I = 0x0

.field static final DEBUG:Z = false

.field static final EXTRA_ARRANGE_MODE:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "Tablet/MultiWindowControlPanel"


# instance fields
.field private mButtonCascadeMode:Landroid/view/View;

.field private mButtonSplit3LMode:Landroid/view/View;

.field private mButtonSplit3RMode:Landroid/view/View;

.field private mButtonSplit4Mode:Landroid/view/View;

.field private mButtonSplitMode:Landroid/view/View;

.field private mChoreo:Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;

.field private mContentParent:Landroid/view/ViewGroup;

.field public mContext:Landroid/content/Context;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mShowing:Z

.field private mStatusBarHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_ARRANGE_WINDOWS:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ACTION_ARRANGE_WINDOWS:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    .line 49
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_CASCADE:I

    sput v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_CASCADE:I

    .line 50
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    sput v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED:I

    .line 51
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED3L:I

    sput v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED3L:I

    .line 52
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED3R:I

    sput v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED3R:I

    .line 53
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED4:I

    sput v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED4:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;-><init>(Lcom/android/systemui/multiwindow/MultiWindowControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;

    .line 164
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$1;-><init>(Lcom/android/systemui/multiwindow/MultiWindowControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/MultiWindowControlPanel;)Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/MultiWindowControlPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private doMultiWindowMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ACTION_ARRANGE_WINDOWS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, arrangeIntent:Landroid/content/Intent;
    sget v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_CASCADE:I

    if-ne p1, v1, :cond_1

    .line 141
    const-string v1, "Tablet/MultiWindowControlPanel"

    const-string v2, "doMultiWindowMode : ARRANGE_CASCADE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    sget v2, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_CASCADE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->show(ZZ)V

    .line 158
    return-void

    .line 143
    :cond_1
    sget v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED:I

    if-ne p1, v1, :cond_2

    .line 144
    const-string v1, "Tablet/MultiWindowControlPanel"

    const-string v2, "doMultiWindowMode : ARRANGE_SPLITED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    sget v2, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 146
    :cond_2
    sget v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED3L:I

    if-ne p1, v1, :cond_3

    .line 147
    const-string v1, "Tablet/MultiWindowControlPanel"

    const-string v2, "doMultiWindowMode : ARRANGE_SPLITED3L"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    sget v2, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED3L:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 149
    :cond_3
    sget v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED3R:I

    if-ne p1, v1, :cond_4

    .line 150
    const-string v1, "Tablet/MultiWindowControlPanel"

    const-string v2, "doMultiWindowMode : ARRANGE_SPLITED3R"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    sget v2, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED3R:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 152
    :cond_4
    sget v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED4:I

    if-ne p1, v1, :cond_0

    .line 153
    const-string v1, "Tablet/MultiWindowControlPanel"

    const-string v2, "doMultiWindowMode : ARRANGE_SPLITED4"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    sget v2, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED4:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 193
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 194
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 195
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 197
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
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonCascadeMode:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 101
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_CASCADE:I

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->doMultiWindowMode(I)V

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mStatusBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mStatusBarHandler:Landroid/os/Handler;

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->MSG_CLOSE_MINI_MODE_APPS_PANEL:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mStatusBarHandler:Landroid/os/Handler;

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->MSG_CLOSE_MINI_MODE_APPS_PANEL:I

    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;

    const/16 v2, 0x64

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    :cond_1
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplitMode:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 103
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED:I

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->doMultiWindowMode(I)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplit3LMode:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 105
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED3L:I

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->doMultiWindowMode(I)V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplit3RMode:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 107
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED3R:I

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->doMultiWindowMode(I)V

    goto :goto_0

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplit4Mode:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 109
    sget v0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->ARRANGE_SPLITED4:I

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->doMultiWindowMode(I)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->setWillNotDraw(Z)V

    .line 82
    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonCascadeMode:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonCascadeMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0d0069

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplitMode:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplitMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0d006b

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplit3LMode:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplit3LMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0d006d

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplit3RMode:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplit3RMode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0d006f

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplit4Mode:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mButtonSplit4Mode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mContentParent:Landroid/view/ViewGroup;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 96
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mShowing:Z

    .line 97
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "vis"

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 185
    return-void
.end method

.method public setStatusBarHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mStatusBarHandler:Landroid/os/Handler;

    .line 206
    return-void
.end method

.method public show(ZZ)V
    .locals 3
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v0, 0x0

    .line 119
    if-eqz p2, :cond_2

    .line 120
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mShowing:Z

    if-eq v1, p1, :cond_0

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mShowing:Z

    .line 122
    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mContentParent:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->startAnimation(Z)V

    goto :goto_0

    .line 133
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mShowing:Z

    .line 134
    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method
