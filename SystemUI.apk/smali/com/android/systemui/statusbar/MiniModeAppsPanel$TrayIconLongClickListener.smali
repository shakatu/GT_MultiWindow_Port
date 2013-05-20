.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrayIconLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1866
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 1869
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1891
    :goto_0
    return v3

    .line 1876
    :cond_0
    if-eqz p1, :cond_1

    .line 1878
    move-object v2, p1

    .line 1885
    .local v2, v:Landroid/view/View;
    const-string v4, "MiniAppDragItem"

    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3800()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1886
    .local v0, dragData:Landroid/content/ClipData;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3902(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;

    .line 1887
    const v4, 0x7f0d004f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1888
    .local v1, icon:Landroid/widget/ImageView;
    new-instance v4, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v4, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v0, v4, v2, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1891
    .end local v0           #dragData:Landroid/content/ClipData;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method
