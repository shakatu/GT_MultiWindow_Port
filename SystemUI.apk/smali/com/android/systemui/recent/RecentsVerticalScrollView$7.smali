.class Lcom/android/systemui/recent/RecentsVerticalScrollView$7;
.super Ljava/lang/Object;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    #calls: Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->access$100(Lcom/android/systemui/recent/RecentsVerticalScrollView;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    .line 195
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    iget v2, v2, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 199
    :cond_0
    return-void
.end method
