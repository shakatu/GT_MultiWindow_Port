.class Lcom/android/systemui/multiwindow/MultiWindowListPanel$1;
.super Ljava/lang/Object;
.source "MultiWindowListPanel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowListPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    #getter for: Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->access$000(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->startAnimation(Z)V

    .line 157
    const/4 v0, 0x0

    return v0
.end method
