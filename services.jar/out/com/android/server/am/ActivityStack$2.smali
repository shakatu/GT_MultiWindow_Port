.class Lcom/android/server/am/ActivityStack$2;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStack;->updateTasksOrderLocked(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;

.field final synthetic val$zoneInfo:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4659
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$2;->this$0:Lcom/android/server/am/ActivityStack;

    iput p2, p0, Lcom/android/server/am/ActivityStack$2;->val$zoneInfo:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 4662
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4663
    .local v0, notifyFocusIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.extra.ARRAGE_TYPE"

    iget v2, p0, Lcom/android/server/am/ActivityStack$2;->val$zoneInfo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4664
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$2;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4665
    return-void
.end method
