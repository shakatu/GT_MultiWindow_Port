.class public Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
.super Landroid/opengl/GLSurfaceView;
.source "CircleUnlockRipple.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final MAX_AWAKE_TIME:I = 0x7530


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

.field private mResumedTimeMillis:J

.field private sSetDrawingOnWindowResizeMethod:Ljava/lang/reflect/Method;

.field private sWasTriedToFindCustomMethod:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 11
    .parameter "context"
    .parameter "callback"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->DBG:Z

    .line 39
    const-string v0, "CircleUnlockRipple"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->TAG:Ljava/lang/String;

    .line 48
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mIsFirst:Z

    .line 49
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mResumedTimeMillis:J

    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mPowerManager:Landroid/os/PowerManager;

    .line 63
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    const v2, 0x1100001

    const v3, 0x1100007

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setSoundRID(II)V

    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 68
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setEGLContextClientVersion(I)V

    .line 69
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setEGLConfigChooser(IIIIII)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 71
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRenderMode(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 77
    :try_start_58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->sSetDrawingOnWindowResizeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_75

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->sWasTriedToFindCustomMethod:Z

    if-nez v0, :cond_75

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->sWasTriedToFindCustomMethod:Z

    .line 79
    const-class v0, Landroid/opengl/GLSurfaceView;

    const-string v1, "setDrawingOnWindowResize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->sSetDrawingOnWindowResizeMethod:Ljava/lang/reflect/Method;

    .line 81
    :cond_75
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->sSetDrawingOnWindowResizeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_89

    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->sSetDrawingOnWindowResizeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Ljava/lang/NoSuchMethodException; {:try_start_58 .. :try_end_89} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_58 .. :try_end_89} :catch_90
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_58 .. :try_end_89} :catch_95

    .line 95
    :cond_89
    :goto_89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mResumedTimeMillis:J

    .line 96
    return-void

    .line 86
    :catch_90
    move-exception v7

    .line 87
    .local v7, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_89

    .line 88
    .end local v7           #e:Ljava/lang/IllegalAccessException;
    :catch_95
    move-exception v7

    .line 89
    .local v7, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_89

    .line 92
    .end local v7           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_9a
    const-string v0, "WaterEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 84
    :catch_a2
    move-exception v0

    goto :goto_89
.end method

.method private detectOpenGLES20()Z
    .registers 5

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 100
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 101
    .local v1, info:Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x2

    if-lt v2, v3, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private pokeWakelockWithTimeCheck()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x7530

    const-wide/16 v7, 0x4e20

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 153
    .local v2, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 154
    .local v0, diff:J
    const-string v4, "CircleUnlockRipple"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck time diffence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    cmp-long v4, v0, v7

    if-gtz v4, :cond_37

    .line 157
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x2710

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 158
    const-string v4, "CircleUnlockRipple"

    const-string v5, "pokeWakelockWithTimeCheck mCallback.pokeWakelock(AWAKE_INTERVAL_DEFAULT_MS)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_36
    return-void

    .line 159
    :cond_37
    cmp-long v4, v0, v7

    if-lez v4, :cond_68

    cmp-long v4, v0, v9

    if-gez v4, :cond_68

    .line 160
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 161
    const-string v4, "CircleUnlockRipple"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck mCallback.pokeWakelock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v9, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 164
    :cond_68
    const-string v4, "CircleUnlockRipple"

    const-string v5, "pokeWakelockWithTimeCheck do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->cleanUp()V

    .line 229
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3
    .parameter "region"

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public handleTickerTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 200
    :goto_7
    return-void

    .line 183
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_12

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRenderMode(I)V

    .line 185
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tikerRippleForMove(F)V

    goto :goto_7

    .line 189
    :pswitch_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tikerRippleForMove(F)V

    goto :goto_7

    .line 194
    :pswitch_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_7

    .line 181
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_8
        :pswitch_30
        :pswitch_21
        :pswitch_30
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 107
    const-string v1, "CircleUnlockRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_6a

    .line 137
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 138
    .local v0, result:Z
    if-eqz v0, :cond_3c

    .line 139
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mIsFirst:Z

    if-eqz v1, :cond_3c

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mIsFirst:Z

    .line 141
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    if-eqz v1, :cond_3c

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    .line 145
    :cond_3c
    return v4

    .line 110
    .end local v0           #result:Z
    :pswitch_3d
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mIsFirst:Z

    .line 111
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRenderMode(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->pokeWakelockWithTimeCheck()V

    .line 114
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    if-eqz v1, :cond_24

    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    goto :goto_24

    .line 119
    :pswitch_4f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->pokeWakelockWithTimeCheck()V

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    if-eqz v1, :cond_24

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    goto :goto_24

    .line 126
    :pswitch_5c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->pokeWakelockWithTimeCheck()V

    .line 129
    :pswitch_5f
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    if-eqz v1, :cond_24

    .line 130
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    goto :goto_24

    .line 108
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_5c
        :pswitch_4f
        :pswitch_5f
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRenderMode(I)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->onPause()V

    .line 235
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->onResume()V

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mResumedTimeMillis:J

    .line 242
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 247
    if-nez p1, :cond_5

    .line 248
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    .line 250
    :cond_5
    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V
    .registers 2
    .parameter "onCircleTouchListener"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    .line 212
    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V
    .registers 2
    .parameter "onCircleUnlockListener"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 219
    return-void
.end method

.method public setStartLocation(I)V
    .registers 5
    .parameter "startLocation"

    .prologue
    .line 203
    const-string v0, "CircleUnlockRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartLocation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setStartLocation(I)V

    .line 205
    return-void
.end method

.method public tikerRippleForClose()V
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_a

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRenderMode(I)V

    .line 177
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tikerRippleForClose()V

    .line 178
    return-void
.end method

.method public tikerRippleForOpen()V
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_a

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRenderMode(I)V

    .line 171
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tikerRippleForOpen()V

    .line 172
    return-void
.end method
