.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenBrightnessAnimator"
.end annotation


# static fields
.field static final ANIMATE_LIGHTS:I = 0xa

.field static final ANIMATE_POWER_OFF:I = 0xb


# instance fields
.field private currentMask:I

.field volatile currentValue:I

.field private duration:I

.field volatile endSensorValue:I

.field volatile endValue:I

.field private final prefix:Ljava/lang/String;

.field volatile startSensorValue:I

.field private startTimeMillis:J

.field volatile startValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 2923
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    .line 2924
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2925
    iput-object p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->prefix:Ljava/lang/String;

    .line 2926
    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2910
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2910
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    return v0
.end method

.method private animateInternal(IZI)V
    .registers 16
    .parameter "mask"
    .parameter "turningOff"
    .parameter "delay"

    .prologue
    .line 2975
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v8

    monitor-enter v8

    .line 2976
    :try_start_7
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v7, v9, :cond_9c

    .line 2977
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2978
    .local v4, now:J
    iget-wide v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    sub-long v9, v4, v9

    long-to-int v1, v9

    .line 2980
    .local v1, elapsed:I
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    if-ge v1, v7, :cond_85

    .line 2981
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    sub-int v0, v7, v9

    .line 2982
    .local v0, delta:I
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    mul-int v9, v0, v1

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v9, v10

    add-int v3, v7, v9

    .line 2983
    .local v3, newValue:I
    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2984
    const/16 v7, 0xff

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2986
    if-lez p3, :cond_4d

    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-ne v3, v7, :cond_4d

    .line 2987
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int v6, v7, v9

    .line 2988
    .local v6, timePerStep:I
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    sub-int/2addr v7, v1

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2989
    if-gez v0, :cond_83

    const/4 v7, -0x1

    :goto_4c
    add-int/2addr v3, v7

    .line 2992
    .end local v6           #timePerStep:I
    :cond_4d
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    sub-int v0, v7, v9

    .line 2993
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    mul-int v10, v0, v1

    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v10, v11

    add-int/2addr v9, v10

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v7, v9}, Lcom/android/server/PowerManagerService;->access$8102(Lcom/android/server/PowerManagerService;I)I

    .line 3020
    .end local v0           #delta:I
    :cond_60
    :goto_60
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3022
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v9, 0xa

    invoke-virtual {v7, v9, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3024
    .local v2, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v7

    int-to-long v9, p3

    invoke-virtual {v7, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3035
    .end local v1           #elapsed:I
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #newValue:I
    .end local v4           #now:J
    :goto_81
    monitor-exit v8

    .line 3036
    return-void

    .line 2989
    .restart local v0       #delta:I
    .restart local v1       #elapsed:I
    .restart local v3       #newValue:I
    .restart local v4       #now:J
    .restart local v6       #timePerStep:I
    :cond_83
    const/4 v7, 0x1

    goto :goto_4c

    .line 2995
    .end local v0           #delta:I
    .end local v3           #newValue:I
    .end local v6           #timePerStep:I
    :cond_85
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 2996
    .restart local v3       #newValue:I
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v7, v9}, Lcom/android/server/PowerManagerService;->access$8102(Lcom/android/server/PowerManagerService;I)I

    .line 2997
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-lez v7, :cond_60

    .line 2998
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v7, v9}, Lcom/android/server/PowerManagerService;->access$7502(Lcom/android/server/PowerManagerService;Z)Z

    goto :goto_60

    .line 3035
    .end local v1           #elapsed:I
    .end local v3           #newValue:I
    .end local v4           #now:J
    :catchall_99
    move-exception v7

    monitor-exit v8
    :try_end_9b
    .catchall {:try_start_7 .. :try_end_9b} :catchall_99

    throw v7

    .line 3026
    :cond_9c
    :try_start_9c
    const-string v7, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Light Animator Finished currentValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$8200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;

    move-result-object v9

    monitor-enter v9
    :try_end_bd
    .catchall {:try_start_9c .. :try_end_bd} :catchall_99

    .line 3029
    :try_start_bd
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v7

    if-eqz v7, :cond_da

    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_da

    .line 3030
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->release()V

    .line 3032
    :cond_da
    monitor-exit v9

    goto :goto_81

    :catchall_dc
    move-exception v7

    monitor-exit v9
    :try_end_de
    .catchall {:try_start_bd .. :try_end_de} :catchall_dc

    :try_start_de
    throw v7
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_99
.end method


# virtual methods
.method public animateTo(III)V
    .registers 5
    .parameter "target"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(IIII)V

    .line 3051
    return-void
.end method

.method public animateTo(IIII)V
    .registers 11
    .parameter "target"
    .parameter "sensorTarget"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3054
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v3

    monitor-enter v3

    .line 3055
    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_29

    .line 3057
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_1a

    .line 3058
    :try_start_11
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3060
    :cond_1a
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_27

    .line 3061
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3063
    :cond_27
    monitor-exit v3

    .line 3116
    :goto_28
    return-void

    .line 3065
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_3e

    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    xor-int/2addr v4, p3

    if-eqz v4, :cond_3e

    .line 3067
    const-string v4, "PowerManagerService"

    const-string v5, "animateTo  : cancelAnimation"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    .line 3070
    :cond_3e
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 3072
    const/4 p4, 0x0

    .line 3073
    if-lez p1, :cond_4f

    .line 3074
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7502(Lcom/android/server/PowerManagerService;Z)Z

    .line 3077
    :cond_4f
    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iput v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    .line 3078
    iput p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 3079
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)I

    move-result v4

    iput v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    .line 3080
    iput p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    .line 3081
    iput p3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    .line 3082
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3900(Lcom/android/server/PowerManagerService;)F

    move-result v4

    int-to-float v5, p4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3083
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    .line 3094
    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-eq p1, v4, :cond_c7

    .line 3095
    and-int/lit8 v4, p3, 0x3

    if-eqz v4, :cond_cd

    move v0, v1

    .line 3096
    .local v0, doScreenAnim:Z
    :goto_7b
    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v4, :cond_cf

    .line 3097
    .local v1, turningOff:Z
    :goto_7f
    if-eqz v1, :cond_9c

    if-eqz v0, :cond_9c

    .line 3099
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3100
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8500(Lcom/android/server/PowerManagerService;)I

    move-result v4

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;I)I

    .line 3101
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3103
    :cond_9c
    if-eqz v0, :cond_c7

    .line 3105
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;

    move-result-object v4

    monitor-enter v4
    :try_end_a5
    .catchall {:try_start_11 .. :try_end_a5} :catchall_ca

    .line 3106
    :try_start_a5
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v2

    if-eqz v2, :cond_c2

    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_c2

    .line 3107
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->acquire()V

    .line 3109
    :cond_c2
    monitor-exit v4
    :try_end_c3
    .catchall {:try_start_a5 .. :try_end_c3} :catchall_d1

    .line 3111
    const/4 v2, 0x0

    :try_start_c4
    invoke-direct {p0, p3, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    .line 3115
    .end local v0           #doScreenAnim:Z
    .end local v1           #turningOff:Z
    :cond_c7
    monitor-exit v3

    goto/16 :goto_28

    :catchall_ca
    move-exception v2

    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_ca

    throw v2

    :cond_cd
    move v0, v2

    .line 3095
    goto :goto_7b

    .restart local v0       #doScreenAnim:Z
    :cond_cf
    move v1, v2

    .line 3096
    goto :goto_7f

    .line 3109
    .restart local v1       #turningOff:Z
    :catchall_d1
    move-exception v2

    :try_start_d2
    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    :try_start_d3
    throw v2
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_ca
.end method

.method public cancelAnimation()V
    .registers 4

    .prologue
    .line 3131
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3132
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .parameter "pw"
    .parameter "string"

    .prologue
    .line 3039
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  animating: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startTimeMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentMask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    #calls: Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$8400(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    return-void
.end method

.method public getCurrentBrightness()I
    .registers 3

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v1

    monitor-enter v1

    .line 3120
    :try_start_7
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    monitor-exit v1

    return v0

    .line 3121
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isAnimating()Z
    .registers 4

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v1

    monitor-enter v1

    .line 3126
    :try_start_7
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v0, v2, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 3127
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected onLooperPrepared()V
    .registers 3

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;-><init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V

    #setter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$7202(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2968
    monitor-enter p0

    .line 2969
    :try_start_b
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mInitComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$4302(Lcom/android/server/PowerManagerService;Z)Z

    .line 2970
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2971
    monitor-exit p0

    .line 2972
    return-void

    .line 2971
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v0
.end method
