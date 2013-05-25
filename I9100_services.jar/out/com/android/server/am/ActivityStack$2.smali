.class Lcom/android/server/am/ActivityStack$2;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStack;->setWindowMode(Landroid/os/IBinder;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;)V
    .registers 2
    .parameter

    .prologue
    .line 4299
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$2;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4302
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$2;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4303
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$2;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4304
    monitor-exit v1

    .line 4305
    return-void

    .line 4304
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method
