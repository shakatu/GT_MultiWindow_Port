.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "SmartSwitcherRecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->loadTasksInBackground()V
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/recent/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19
    .parameter "params"

    .prologue
    .line 275
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v14

    .line 276
    .local v14, origPri:I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 278
    .local v15, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 281
    .local v8, am:Landroid/app/ActivityManager;
    const/16 v1, 0x14

    const/4 v2, 0x2

    invoke-virtual {v8, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v17

    .line 283
    .local v17, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v13

    .line 284
    .local v13, numTasks:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 287
    .local v7, homeInfo:Landroid/content/pm/ActivityInfo;
    const/4 v9, -0x1

    .line 289
    .local v9, homeIdx:I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v18, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v10, 0x0

    .local v10, i:I
    const/4 v11, 0x0

    .local v11, index:I
    :goto_0
    if-ge v10, v13, :cond_0

    const/16 v1, 0x14

    if-ge v11, v1, :cond_0

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    :cond_0
    const/4 v1, 0x1

    if-lt v9, v1, :cond_1

    .line 324
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 328
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 329
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 332
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 333
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v18, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 336
    :cond_3
    invoke-static {v14}, Landroid/os/Process;->setThreadPriority(I)V

    .line 337
    const/4 v1, 0x0

    return-object v1

    .line 298
    :cond_4
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 301
    .local v16, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v7, :cond_5

    iget-object v1, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    move v9, v10

    .line 310
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    move-object/from16 v0, v16

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v12

    .line 314
    .local v12, item:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v12, :cond_6

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    invoke-virtual {v1, v12}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V

    .line 316
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 293
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, values:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 264
    .local v0, newTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;)V

    .line 268
    .end local v0           #newTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_0
    return-void
.end method
