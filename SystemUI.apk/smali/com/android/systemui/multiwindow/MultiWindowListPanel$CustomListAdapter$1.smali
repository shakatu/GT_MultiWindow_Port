.class Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;
.super Ljava/lang/Object;
.source "MultiWindowListPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;->this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 242
    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 243
    const v4, 0x7f0d0073

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 244
    .local v2, nameView:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 246
    .local v3, pos:I
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;->this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;

    .line 247
    .local v1, data:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;->this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 248
    .local v0, am:Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 249
    iget v4, v1, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;->taskid:I

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 255
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #data:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$CustomListData;
    .end local v2           #nameView:Landroid/widget/TextView;
    .end local v3           #pos:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;->this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->show(ZZ)V

    .line 257
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;->this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    #getter for: Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->access$100(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 258
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;->this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    #getter for: Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->access$100(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)Landroid/os/Handler;

    move-result-object v4

    sget v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->MSG_CLOSE_MINI_MODE_APPS_PANEL:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;->this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    #getter for: Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mStatusBarHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->access$100(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)Landroid/os/Handler;

    move-result-object v4

    sget v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->MSG_CLOSE_MINI_MODE_APPS_PANEL:I

    iget-object v6, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter$1;->this$1:Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;

    iget-object v6, v6, Lcom/android/systemui/multiwindow/MultiWindowListPanel$CustomListAdapter;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    #getter for: Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;
    invoke-static {v6}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->access$000(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;

    const/16 v6, 0x7d

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    :cond_1
    return-void

    .line 252
    .restart local v2       #nameView:Landroid/widget/TextView;
    :cond_2
    const-string v4, "Tablet/MultiWindowListPanel"

    const-string v5, "selected item is not valid"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
