.class public Lcom/android/systemui/multiwindow/RunningTasksLoader;
.super Ljava/lang/Object;
.source "RunningTasksLoader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_TASKS:I = 0x14

.field private static final MAX_TASKS:I = 0x15

.field static final TAG:Ljava/lang/String; = "RunningTasksLoader"

.field private static sUpdateTasksOrderMethod:Ljava/lang/reflect/Method;

.field private static sWindowModeField:Ljava/lang/reflect/Field;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitPanel:Lcom/android/systemui/multiwindow/SplitPanelView;

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sWindowModeField:Ljava/lang/reflect/Field;

    .line 61
    sput-object v0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sUpdateTasksOrderMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 69
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x1050002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 70
    .local v4, width:I
    const v5, 0x1050001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 71
    .local v2, height:I
    const v5, 0x7f020212

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 73
    .local v1, color:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    .line 74
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 77
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/RunningTasksLoader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/RunningTasksLoader;)Lcom/android/systemui/multiwindow/SplitPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mSplitPanel:Lcom/android/systemui/multiwindow/SplitPanelView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/RunningTasksLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 3
    .parameter "t"

    .prologue
    .line 203
    :try_start_0
    sget-object v1, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sWindowModeField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "windowMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sWindowModeField:Ljava/lang/reflect/Field;

    .line 206
    :cond_0
    sget-object v1, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sWindowModeField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 214
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 214
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 211
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private loadThumbnailsInBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->loadThumbnail(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 146
    new-instance v0, Lcom/android/systemui/multiwindow/RunningTasksLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/RunningTasksLoader$1;-><init>(Lcom/android/systemui/multiwindow/RunningTasksLoader;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    :cond_0
    return-void
.end method

.method public static setWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3
    .parameter "t"
    .parameter "windowMode"

    .prologue
    .line 219
    :try_start_0
    sget-object v1, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sWindowModeField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "windowMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sWindowModeField:Ljava/lang/reflect/Field;

    .line 222
    :cond_0
    sget-object v1, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sWindowModeField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 230
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateTasksOrder(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    .local p0, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 235
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    sget-object v2, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sUpdateTasksOrderMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "updateTasksOrder"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sUpdateTasksOrderMethod:Ljava/lang/reflect/Method;

    .line 238
    :cond_0
    sget-object v2, Lcom/android/systemui/multiwindow/RunningTasksLoader;->sUpdateTasksOrderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 249
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 242
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 247
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelLoadingThumbnails()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 109
    :cond_0
    return-void
.end method

.method public getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getRunningTasks()Ljava/util/ArrayList;
    .locals 1
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
    .line 138
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method initRunningTasks()V
    .locals 9

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->cancelLoadingThumbnails()V

    .line 114
    iget-object v5, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 117
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/16 v6, 0x3e8

    sget v7, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v5, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 125
    iget-object v5, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 126
    .local v3, r:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->option(I)I

    move-result v2

    .line 127
    .local v2, options:I
    sget v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    sget v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_FULL_SIZE:I

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    if-eqz v5, :cond_0

    .line 129
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #options:I
    .end local v3           #r:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 135
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void

    .line 132
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/RunningTasksLoader;->loadThumbnailsInBackground()V

    goto :goto_1
.end method

.method loadThumbnail(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .parameter "td"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 91
    .local v0, am:Landroid/app/ActivityManager;
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v1

    .line 93
    .local v1, thumbs:Landroid/app/ActivityManager$TaskThumbnails;
    if-eqz v1, :cond_0

    .line 95
    :cond_0
    monitor-enter p1

    .line 96
    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, v1, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    iput-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 101
    :goto_0
    monitor-exit p1

    .line 102
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    iput-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSplitPanel(Lcom/android/systemui/multiwindow/SplitPanelView;)V
    .locals 0
    .parameter "splitPanel"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader;->mSplitPanel:Lcom/android/systemui/multiwindow/SplitPanelView;

    .line 82
    return-void
.end method
