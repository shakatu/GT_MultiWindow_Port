.class Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;
.super Ljava/lang/Object;
.source "MultiWindowControlPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Choreographer"
.end annotation


# static fields
.field static final DURATION:I = 0xc8


# instance fields
.field mContentAnim:Landroid/animation/AnimatorSet;

.field mPanelHeight:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowControlPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method


# virtual methods
.method createAnimation(Z)V
    .locals 9
    .parameter "appearing"

    .prologue
    .line 220
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    const v6, 0x7f0d0064

    invoke-virtual {v5, v6}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 221
    .local v3, root:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 224
    .local v1, height:I
    if-eqz p1, :cond_1

    .line 225
    int-to-float v4, v1

    .line 226
    .local v4, start:F
    const/4 v0, 0x0

    .line 232
    .local v0, end:F
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    #getter for: Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->access$100(Lcom/android/systemui/multiwindow/MultiWindowControlPanel;)Landroid/view/ViewGroup;

    move-result-object v5

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v0, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 234
    .local v2, posAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_2

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x4000

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_1
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 242
    :cond_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 244
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 246
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 247
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    return-void

    .line 228
    .end local v0           #end:F
    .end local v2           #posAnim:Landroid/animation/Animator;
    .end local v4           #start:F
    :cond_1
    const/4 v4, 0x0

    .line 229
    .restart local v4       #start:F
    int-to-float v0, v1

    .restart local v0       #end:F
    goto :goto_0

    .line 234
    .restart local v2       #posAnim:Landroid/animation/Animator;
    :cond_2
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x3f80

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto :goto_1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 264
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mVisible:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->setVisibility(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->this$0:Lcom/android/systemui/multiwindow/MultiWindowControlPanel;

    #getter for: Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel;->access$100(Lcom/android/systemui/multiwindow/MultiWindowControlPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 274
    iput-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 275
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 278
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 281
    return-void
.end method

.method startAnimation(Z)V
    .locals 1
    .parameter "appearing"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->createAnimation(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/MultiWindowControlPanel$Choreographer;->mVisible:Z

    .line 258
    return-void
.end method
