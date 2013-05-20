.class Lcom/android/systemui/multiwindow/MultiWindowControlPanel$1;
.super Ljava/lang/Object;
.source "MultiWindowControlPanel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowControlPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    #getter for: Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mChoreo:Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->access$000(Lcom/android/systemui/multiwindow/MultiWindowControlPanel;)Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->startAnimation(Z)V

    .line 170
    const/4 v0, 0x0

    return v0
.end method
