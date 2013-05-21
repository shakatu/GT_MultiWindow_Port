.class public Landroid/sec/multiwindow/MultiWindow;
.super Landroid/sec/multiwindow/MultiWindowImpl;
.source "MultiWindow.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindow;


# static fields
.field protected static final TAG:Ljava/lang/String; = "MultiWindow"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArrangeable:Z

.field private mDefaultSize:Landroid/graphics/Rect;

.field private mMaximumSize:Landroid/graphics/Rect;

.field private mMinimumSize:Landroid/graphics/Rect;

.field private mWindowMode:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 12
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowImpl;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v9, p0, Landroid/sec/multiwindow/MultiWindow;->mArrangeable:Z

    .line 125
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    .line 126
    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 128
    .local v0, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    const-string v6, "getWindowMode"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v5, v6, v3}, Landroid/sec/multiwindow/MultiWindow;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 129
    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    const-string v5, "setWindowMode"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    invoke-virtual {p0, v0, v3, v5, v6}, Landroid/sec/multiwindow/MultiWindow;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 132
    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    const-string v5, "getWindowInfo"

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v3, v5, v4}, Landroid/sec/multiwindow/MultiWindow;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 133
    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    const-string v4, "setWindowInfo"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v8

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/sec/multiwindow/MultiWindow;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 137
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 138
    .local v2, winInfo:Landroid/os/Bundle;
    sget-object v3, Landroid/sec/multiwindow/Constants$Intent;->EXTRA_WINDOW_DEFAULT_SIZE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mDefaultSize:Landroid/graphics/Rect;

    .line 140
    sget-object v3, Landroid/sec/multiwindow/Constants$Intent;->EXTRA_WINDOW_MINIMUM_SIZE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mMinimumSize:Landroid/graphics/Rect;

    .line 143
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 144
    .local v1, size:Landroid/graphics/Point;
    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 145
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mMaximumSize:Landroid/graphics/Rect;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/multiwindow/IMultiWindowService;Landroid/content/ComponentName;)V
    .registers 5
    .parameter "context"
    .parameter "service"
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowImpl;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/multiwindow/MultiWindow;->mArrangeable:Z

    .line 493
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/multiwindow/IMultiWindowService;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "service"
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowImpl;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/multiwindow/MultiWindow;->mArrangeable:Z

    .line 491
    return-void
.end method

.method private checkMode(I)Z
    .registers 3
    .parameter "mode"

    .prologue
    .line 39
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->mode(I)I

    move-result v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private checkOption(I)Z
    .registers 3
    .parameter "options"

    .prologue
    .line 43
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->option(I)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;
    .registers 4
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 108
    if-nez p0, :cond_4

    .line 114
    :cond_3
    :goto_3
    return-object v0

    .line 111
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Landroid/sec/multiwindow/Constants$PackageManager;->FEATURE_MULTIWINDOW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    new-instance v0, Landroid/sec/multiwindow/MultiWindow;

    invoke-direct {v0, p0}, Landroid/sec/multiwindow/MultiWindow;-><init>(Landroid/app/Activity;)V

    goto :goto_3
.end method

.method private getLastSize()Landroid/graphics/Rect;
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, info:Landroid/os/Bundle;
    sget-object v2, Landroid/sec/multiwindow/Constants$Intent;->EXTRA_WINDOW_LAST_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 57
    .local v1, lastSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_f

    .end local v1           #lastSize:Landroid/graphics/Rect;
    :goto_e
    return-object v1

    .restart local v1       #lastSize:Landroid/graphics/Rect;
    :cond_f
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindow;->mDefaultSize:Landroid/graphics/Rect;

    goto :goto_e
.end method

.method private getWindowInfo()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 73
    const-string v1, "getWindowInfo"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/sec/multiwindow/MultiWindow;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method protected static isEnabledComponentName(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "context"
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method private setLastSize(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "rect"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, info:Landroid/os/Bundle;
    sget-object v1, Landroid/sec/multiwindow/Constants$Intent;->EXTRA_WINDOW_LAST_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->setWindowInfo(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method private setWindowInfo(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 69
    const-string v0, "setWindowInfo"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/MultiWindow;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private setWindowMode(I)V
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    .line 61
    const-string v0, "setWindowMode"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/MultiWindow;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private setWindowParams()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 77
    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 79
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    invoke-virtual {p0, v2}, Landroid/sec/multiwindow/MultiWindow;->mode(I)I

    move-result v2

    sget v3, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    if-ne v2, v3, :cond_3c

    .line 80
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->getLastSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    .local v0, newSize:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 82
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 85
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    .end local v0           #newSize:Landroid/graphics/Rect;
    :goto_32
    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    return-void

    .line 87
    :cond_3c
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 88
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 89
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_32
.end method

.method private updateWindowMode()V
    .registers 3

    .prologue
    .line 65
    const-string v1, "getWindowMode"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/sec/multiwindow/MultiWindow;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 66
    return-void
.end method


# virtual methods
.method public finish()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public finish(I)Z
    .registers 3
    .parameter "taskId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public fitToHalf(I)Z
    .registers 3
    .parameter "direction"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public getArrangeable()Z
    .registers 2

    .prologue
    .line 463
    iget-boolean v0, p0, Landroid/sec/multiwindow/MultiWindow;->mArrangeable:Z

    return v0
.end method

.method public getHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    const/4 v0, -0x1

    return v0
.end method

.method public getMinimumSize()Landroid/graphics/Point;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 527
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getMultiWindowEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 439
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_RESIZE:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->checkOption(I)Z

    move-result v0

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 394
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 395
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->getLastSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 398
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindow;->mMaximumSize:Landroid/graphics/Rect;

    goto :goto_d
.end method

.method public getRect(I)Landroid/graphics/Rect;
    .registers 3
    .parameter "taskId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 519
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getWidth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    const/4 v0, -0x1

    return v0
.end method

.method public getZone()I
    .registers 3

    .prologue
    .line 471
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 472
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int/2addr v0, v1

    return v0
.end method

.method public isMaximized()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public isMaximized(I)Z
    .registers 3
    .parameter "taskId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public isMinimized()Z
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 190
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->checkOption(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isMultiWindow()Z
    .registers 2

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 167
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->checkMode(I)Z

    move-result v0

    return v0
.end method

.method public isNormalWindow()Z
    .registers 2

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 156
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_NORMAL:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->checkMode(I)Z

    move-result v0

    return v0
.end method

.method public isPinup()Z
    .registers 2

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 178
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->checkOption(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isStartedAsPinup()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public isStartingSplitScreen(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public maximize()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public minimize()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public minimize(I)Z
    .registers 3
    .parameter "taskId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public minimize(Z)Z
    .registers 5
    .parameter "flag"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_9

    .line 357
    :cond_8
    :goto_8
    return v0

    .line 336
    :cond_9
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 338
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindow;->getMultiWindowEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 342
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindow;->isMinimized()Z

    move-result v0

    if-ne p1, v0, :cond_1a

    move v0, v1

    .line 343
    goto :goto_8

    .line 346
    :cond_1a
    if-eqz p1, :cond_34

    .line 347
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 348
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 354
    :goto_2a
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->setWindowMode(I)V

    .line 355
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->setWindowParams()V

    move v0, v1

    .line 357
    goto :goto_8

    .line 351
    :cond_34
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    goto :goto_2a
.end method

.method public multiWindow()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0, v0}, Landroid/sec/multiwindow/MultiWindow;->multiWindow(ZZ)Z

    move-result v0

    return v0
.end method

.method public multiWindow(Z)Z
    .registers 3
    .parameter "pinup"

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/sec/multiwindow/MultiWindow;->multiWindow(ZZ)Z

    move-result v0

    return v0
.end method

.method public multiWindow(ZZ)Z
    .registers 4
    .parameter "pinup"
    .parameter "minimize"

    .prologue
    .line 235
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I

    invoke-virtual {p0, p1, p2, v0}, Landroid/sec/multiwindow/MultiWindow;->multiWindow(ZZI)Z

    move-result v0

    return v0
.end method

.method public multiWindow(ZZI)Z
    .registers 7
    .parameter "pinup"
    .parameter "minimize"
    .parameter "zone"

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 249
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindow;->getMultiWindowEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 288
    :cond_a
    :goto_a
    return v1

    .line 253
    :cond_b
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_a

    .line 257
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 258
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 260
    if-eqz p1, :cond_63

    .line 261
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 267
    :goto_2a
    if-eqz p2, :cond_6d

    .line 268
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 274
    :goto_33
    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I

    if-ne p3, v1, :cond_77

    .line 275
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/MultiWindow;->getArrange(Landroid/content/res/Configuration;)I

    move-result v0

    .line 276
    .local v0, arrange:I
    sget v1, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_SPLITED:I

    if-ne v0, v1, :cond_59

    .line 277
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 278
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 285
    .end local v0           #arrange:I
    :cond_59
    :goto_59
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->setWindowParams()V

    .line 286
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    invoke-direct {p0, v1}, Landroid/sec/multiwindow/MultiWindow;->setWindowMode(I)V

    .line 288
    const/4 v1, 0x1

    goto :goto_a

    .line 264
    :cond_63
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    goto :goto_2a

    .line 271
    :cond_6d
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    goto :goto_33

    .line 281
    :cond_77
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v2, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 282
    iget v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    or-int/2addr v1, p3

    iput v1, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    goto :goto_59
.end method

.method public normalWindow()Z
    .registers 3

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 203
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 204
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_NORMAL:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 205
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 206
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 208
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->setWindowMode(I)V

    .line 209
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->setWindowParams()V

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public pinUp(Z)Z
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public pinUp(ZI)Z
    .registers 4
    .parameter "value"
    .parameter "taskId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public pinup(Z)Z
    .registers 4
    .parameter "flag"

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_8

    .line 320
    :cond_7
    :goto_7
    return v0

    .line 304
    :cond_8
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 306
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindow;->getMultiWindowEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 310
    if-eqz p1, :cond_24

    .line 311
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 317
    :goto_1a
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->setWindowMode(I)V

    .line 318
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->setWindowParams()V

    .line 320
    const/4 v0, 0x1

    goto :goto_7

    .line 314
    :cond_24
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    goto :goto_1a
.end method

.method public relayout(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "rect"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public restore()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public restore(I)Z
    .registers 3
    .parameter "taskId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public setArrangeable(Z)Z
    .registers 3
    .parameter "flag"

    .prologue
    .line 451
    iput-boolean p1, p0, Landroid/sec/multiwindow/MultiWindow;->mArrangeable:Z

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public setMinimumSize(II)Z
    .registers 4
    .parameter "width"
    .parameter "height"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public setMultiWindowEnabled(Z)Z
    .registers 3
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public setRect(Landroid/graphics/Rect;)Z
    .registers 6
    .parameter "rect"

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/sec/multiwindow/MultiWindow;->getArrange(Landroid/content/res/Configuration;)I

    move-result v0

    .line 369
    .local v0, arrange:I
    sget v2, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_CASCADE:I

    if-eq v0, v2, :cond_18

    sget v2, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_UNDEFINED:I

    if-eq v0, v2, :cond_18

    .line 384
    :cond_17
    :goto_17
    return v1

    .line 373
    :cond_18
    if-eqz p1, :cond_17

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mMinimumSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v2, v3, :cond_17

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mMinimumSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v2, v3, :cond_17

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mMaximumSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v2, v3, :cond_17

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindow;->mMaximumSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v2, v3, :cond_17

    .line 376
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 377
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindow;->setLastSize(Landroid/graphics/Rect;)V

    .line 378
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->setWindowParams()V

    .line 380
    const/4 v1, 0x1

    goto :goto_17
.end method

.method public setZone(I)V
    .registers 4
    .parameter "zone"

    .prologue
    .line 479
    invoke-direct {p0}, Landroid/sec/multiwindow/MultiWindow;->updateWindowMode()V

    .line 480
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    .line 481
    iget v0, p0, Landroid/sec/multiwindow/MultiWindow;->mWindowMode:I

    sget v1, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->setWindowMode(I)V

    .line 482
    return-void
.end method

.method public start()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method
