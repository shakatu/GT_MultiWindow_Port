.class Lcom/android/systemui/multiwindow/RunningTasksLoader$1$1;
.super Ljava/lang/Object;
.source "RunningTasksLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/RunningTasksLoader$1;->onProgressUpdate([Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/multiwindow/RunningTasksLoader$1;

.field final synthetic val$td:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RunningTasksLoader$1;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader$1$1;->this$1:Lcom/android/systemui/multiwindow/RunningTasksLoader$1;

    iput-object p2, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader$1$1;->val$td:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader$1$1;->val$td:Landroid/app/ActivityManager$RunningTaskInfo;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RunningTasksLoader$1$1;->val$td:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
