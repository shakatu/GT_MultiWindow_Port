.class public Lcom/android/server/pm/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;
    }
.end annotation


# static fields
.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final SHUTDOWN_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private final DRAW_BEFORE:I

.field private final DRAW_FINISH:I

.field private final DRAW_NEXT:I

.field private final DRAW_START:I

.field private MAX_IMAGECOUNT:I

.field private buf:[I

.field private cntImages:I

.field private handle:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mDrawState:I

.field private mImages:Landroid/graphics/Bitmap;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mViewUpdateHandler:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

.field private mp:Landroid/media/MediaPlayer;

.field private sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

.field private sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

.field private soundThread:Ljava/lang/Thread;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 116
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "theme"

    .prologue
    const/16 v1, 0xc8

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 85
    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->MAX_IMAGECOUNT:I

    .line 89
    iput v4, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_BEFORE:I

    .line 90
    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_START:I

    .line 91
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_NEXT:I

    .line 92
    const/16 v1, 0x190

    iput v1, p0, Lcom/android/server/pm/ShutdownDialog;->DRAW_FINISH:I

    .line 94
    iput v4, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    .line 95
    new-instance v1, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;-><init>(Lcom/android/server/pm/ShutdownDialog;Lcom/android/server/pm/ShutdownDialog$1;)V

    iput-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mViewUpdateHandler:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    .line 96
    iput v3, p0, Lcom/android/server/pm/ShutdownDialog;->cntImages:I

    .line 103
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 105
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 106
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 109
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 245
    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    .line 121
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "POWER_OFF_ANIMATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, startAnimation:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShutdownDialog;->setCancelable(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/ShutdownDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/ShutdownDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/ShutdownDialog;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/ShutdownDialog;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->buf:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/ShutdownDialog;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/pm/ShutdownDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/pm/ShutdownDialog;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->soundThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/ShutdownDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    return v0
.end method

.method public static existAnim()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 384
    new-instance v0, Ljava/io/File;

    const-string v2, "//system/csc_contents/shutdown.qmg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 390
    :cond_10
    :goto_10
    return v1

    .line 387
    :cond_11
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v0       #f:Ljava/io/File;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_10

    .line 390
    :cond_20
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private prepareAnim(Ljava/lang/String;)V
    .registers 7
    .parameter "animPath"

    .prologue
    .line 422
    if-eqz p1, :cond_91

    .line 423
    invoke-static {p1}, Lcom/android/server/pm/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    .line 427
    :goto_8
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    invoke-static {v2}, Lcom/android/server/pm/LibQmg;->qmgGetWidth(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    .line 428
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    invoke-static {v2}, Lcom/android/server/pm/LibQmg;->qmgGetHeight(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    .line 430
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 434
    .local v0, l:Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 435
    .local v1, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 437
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v3, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    if-le v2, v3, :cond_9b

    .line 438
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 443
    :goto_65
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 445
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 448
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v3, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->buf:[I

    .line 450
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->width:I

    iget v3, p0, Lcom/android/server/pm/ShutdownDialog;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    .line 451
    return-void

    .line 425
    .end local v0           #l:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_91
    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-static {v2}, Lcom/android/server/pm/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShutdownDialog;->handle:I

    goto/16 :goto_8

    .line 440
    .restart local v0       #l:Landroid/view/WindowManager$LayoutParams;
    .restart local v1       #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_9b
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_65
.end method

.method private prepareSound(Ljava/lang/String;)V
    .registers 6
    .parameter "soundPath"

    .prologue
    .line 399
    const-string v2, ""

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 402
    :try_start_b
    const-string v2, "ShutdownDialog"

    const-string v3, "shutdown Dialog kor power snd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v2, "service.media.powersnd"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v2, "ctl.start"

    const-string v3, "powersnd"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_25} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_25} :catch_3e

    .line 419
    :goto_25
    return-void

    .line 408
    :catch_26
    move-exception v1

    .line 409
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_25

    .line 414
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShutdownDialog;->prepareSoundThread(Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 417
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-static {v0, v2}, Lcom/android/server/pm/ShutdownThreadFeature;->SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V

    goto :goto_25

    .line 410
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_3e
    move-exception v2

    goto :goto_25
.end method

.method private prepareSoundThread(Ljava/lang/String;)V
    .registers 12
    .parameter "soundPath"

    .prologue
    const/4 v9, 0x1

    .line 254
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/pm/ShutdownDialog$1;

    invoke-direct {v8, p0}, Lcom/android/server/pm/ShutdownDialog$1;-><init>(Lcom/android/server/pm/ShutdownDialog;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->soundThread:Ljava/lang/Thread;

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, f:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v3, fMultiCsc:Ljava/io/File;
    if-eqz p1, :cond_1c

    .line 282
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .restart local v2       #f:Ljava/io/File;
    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_31

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_31

    .line 285
    :cond_2a
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    const-string v7, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v2       #f:Ljava/io/File;
    :cond_31
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_40

    .line 288
    :cond_39
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    const-string v7, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v2       #f:Ljava/io/File;
    :cond_40
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4f

    .line 291
    :cond_48
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    const-string v7, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v2       #f:Ljava/io/File;
    :cond_4f
    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_5f

    .line 294
    :cond_57
    const-string v7, "ShutdownDialog"

    const-string v8, "!@Sound file not found, Shutdown sound will not be start!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_5e
    :goto_5e
    return-void

    .line 297
    :cond_5f
    const-string v7, "ShutdownDialog"

    const-string v8, "!@Sound file found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 300
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 301
    .local v6, volume:I
    if-gez v6, :cond_7e

    .line 302
    const-string v7, "ShutdownDialog"

    const-string v8, "!@Volume is not enough"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 306
    :cond_7e
    const/4 v4, 0x0

    .line 308
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_7f
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    .line 309
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_c8
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8b} :catch_b7

    .line 310
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_8b
    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 311
    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 312
    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 313
    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    new-instance v8, Lcom/android/server/pm/ShutdownDialog$2;

    invoke-direct {v8, p0}, Lcom/android/server/pm/ShutdownDialog$2;-><init>(Lcom/android/server/pm/ShutdownDialog;)V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 322
    iget-object v7, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_af
    .catchall {:try_start_8b .. :try_end_af} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_af} :catch_d4

    .line 331
    if-eqz v5, :cond_5e

    .line 332
    :try_start_b1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_5e

    .line 333
    .end local v5           #fis:Ljava/io/FileInputStream;
    :catch_b5
    move-exception v7

    goto :goto_5e

    .line 323
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_b7
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/Exception;
    :goto_b8
    :try_start_b8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    const-string v7, "ShutdownDialog"

    const-string v8, "!@MediaPlayer exception raised. SoundThread is not started !"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_c8

    .line 331
    if-eqz v4, :cond_5e

    .line 332
    :try_start_c4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_b5

    goto :goto_5e

    .line 330
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_c8
    move-exception v7

    .line 331
    :goto_c9
    if-eqz v4, :cond_ce

    .line 332
    :try_start_cb
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 330
    :cond_ce
    :goto_ce
    throw v7

    .line 333
    :catch_cf
    move-exception v8

    goto :goto_ce

    .line 330
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_d1
    move-exception v7

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_c9

    .line 323
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_d4
    move-exception v1

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_b8
.end method


# virtual methods
.method public drawState()I
    .registers 2

    .prologue
    .line 505
    iget v0, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    return v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 145
    const-string v0, "ShutdownDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 148
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 157
    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 158
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_16

    .line 159
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 165
    :goto_12
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownDialog;->start()V

    .line 166
    return-void

    .line 161
    :cond_16
    const-string v1, "ShutdownDialog"

    const-string v2, "StatusBarManager == null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 381
    return-void
.end method

.method public prepareBootup()V
    .registers 3

    .prologue
    .line 494
    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v0, "/system/media/audio/ui/PowerOn.ogg"

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    .line 496
    const-string v0, "/system/media/video/shutdown/warmboot.qmg"

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShutdownDialog;->prepareAnim(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public prepareShutdown(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "animPath"
    .parameter "soundPath"

    .prologue
    .line 454
    const-string v5, "ShutdownDialog"

    const-string v6, "prepare shutdown dialog image and sound"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz p2, :cond_14

    .line 456
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    .line 465
    :goto_c
    const-string v0, "//system/media/video/shutdown/spr_shutdown.qmg"

    .line 466
    .local v0, PATH_SHUTDOWNIMG_CHAMELEON:Ljava/lang/String;
    if-eqz p1, :cond_2d

    .line 467
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShutdownDialog;->prepareAnim(Ljava/lang/String;)V

    .line 491
    :goto_13
    return-void

    .line 458
    .end local v0           #PATH_SHUTDOWNIMG_CHAMELEON:Ljava/lang/String;
    :cond_14
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v4, shutdownSoundFileMultiCSC:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 460
    const-string v5, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {p0, v5}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    goto :goto_c

    .line 462
    :cond_27
    const-string v5, "/System/media/audio/ui/PowerOff.ogg"

    invoke-direct {p0, v5}, Lcom/android/server/pm/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    goto :goto_c

    .line 469
    .end local v4           #shutdownSoundFileMultiCSC:Ljava/io/File;
    .restart local v0       #PATH_SHUTDOWNIMG_CHAMELEON:Ljava/lang/String;
    :cond_2d
    const-string v5, "SPR"

    const-string v6, "ro.csc.sales_code"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, imei_mps_code:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 473
    :try_start_4a
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 474
    .local v3, in:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_59} :catch_77

    move-result-object v2

    .line 480
    .end local v3           #in:Ljava/io/BufferedReader;
    :cond_5a
    :goto_5a
    if-eqz v2, :cond_81

    const-string v5, "SPR"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    new-instance v5, Ljava/io/File;

    const-string v6, "//system/media/video/shutdown/spr_shutdown.qmg"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 481
    const-string v5, "//system/media/video/shutdown/spr_shutdown.qmg"

    invoke-direct {p0, v5}, Lcom/android/server/pm/ShutdownDialog;->prepareAnim(Ljava/lang/String;)V

    goto :goto_13

    .line 475
    :catch_77
    move-exception v1

    .line 476
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ShutdownDialog"

    const-string v6, "read error : imei mps_code"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v2, 0x0

    goto :goto_5a

    .line 486
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #imei_mps_code:Ljava/lang/String;
    :cond_81
    new-instance v5, Ljava/io/File;

    const-string v6, "//system/csc_contents/shutdown.qmg"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_94

    .line 487
    const-string v5, "//system/csc_contents/shutdown.qmg"

    invoke-direct {p0, v5}, Lcom/android/server/pm/ShutdownDialog;->prepareAnim(Ljava/lang/String;)V

    goto :goto_13

    .line 489
    :cond_94
    const-string v5, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {p0, v5}, Lcom/android/server/pm/ShutdownDialog;->prepareAnim(Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    .line 395
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 500
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    .line 501
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog;->mViewUpdateHandler:Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->sendEmptyMessage(I)Z

    .line 502
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .registers 8
    .parameter "waittime"

    .prologue
    const/4 v1, 0x0

    .line 347
    :goto_1
    iget v2, p0, Lcom/android/server/pm/ShutdownDialog;->mDrawState:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_16

    .line 349
    const-wide/16 v2, 0x64

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_1

    .line 351
    :catch_d
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "ShutdownDialog"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_15
    return v1

    .line 357
    :cond_16
    const-string v2, "ShutdownDialog"

    const-string v3, "animation end wait start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 361
    const-string v2, "ShutdownDialog"

    const-string v3, "animation end lock time out or null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_33} :catch_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_33} :catch_5c

    goto :goto_15

    .line 369
    :catch_34
    move-exception v0

    .line 370
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v1, "ShutdownDialog"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3c
    :goto_3c
    const-string v1, "ShutdownDialog"

    const-string v2, "animation end detected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x1

    goto :goto_15

    .line 364
    :cond_45
    :try_start_45
    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 366
    const-string v2, "ShutdownDialog"

    const-string v3, "sound end lock time out or null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_5b} :catch_34
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5b} :catch_5c

    goto :goto_15

    .line 371
    :catch_5c
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ShutdownDialog"

    const-string v2, "Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
