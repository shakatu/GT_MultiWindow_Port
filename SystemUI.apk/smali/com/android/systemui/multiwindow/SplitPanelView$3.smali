.class Lcom/android/systemui/multiwindow/SplitPanelView$3;
.super Ljava/lang/Object;
.source "SplitPanelView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitPanelView$3;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitPanelView$3;->this$0:Lcom/android/systemui/multiwindow/SplitPanelView;

    #setter for: Lcom/android/systemui/multiwindow/SplitPanelView;->mSourceView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/systemui/multiwindow/SplitPanelView;->access$1002(Lcom/android/systemui/multiwindow/SplitPanelView;Landroid/view/View;)Landroid/view/View;

    .line 549
    const/4 v0, 0x0

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 550
    const/4 v0, 0x1

    return v0
.end method
