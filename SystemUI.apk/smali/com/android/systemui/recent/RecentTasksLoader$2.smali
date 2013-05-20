.class Lcom/android/systemui/recent/RecentTasksLoader$2;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/recent/TaskDescription;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$2;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 364
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 365
    .local v1, origPri:I
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 368
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$2;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    :cond_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 388
    const/4 v3, 0x0

    return-object v3

    .line 371
    :cond_1
    const/4 v2, 0x0

    .line 372
    .local v2, td:Lcom/android/systemui/recent/TaskDescription;
    :goto_1
    if-nez v2, :cond_2

    .line 374
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentTasksLoader$2;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 378
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/recent/TaskDescription;->isNull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/systemui/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V

    .line 382
    monitor-enter v2

    .line 383
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Lcom/android/systemui/recent/TaskDescription;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentTasksLoader$2;->publishProgress([Ljava/lang/Object;)V

    .line 384
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 375
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected varargs onProgressUpdate([Lcom/android/systemui/recent/TaskDescription;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$2;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 359
    .local v0, td:Lcom/android/systemui/recent/TaskDescription;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$2;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V

    .line 361
    .end local v0           #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    check-cast p1, [Lcom/android/systemui/recent/TaskDescription;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$2;->onProgressUpdate([Lcom/android/systemui/recent/TaskDescription;)V

    return-void
.end method
