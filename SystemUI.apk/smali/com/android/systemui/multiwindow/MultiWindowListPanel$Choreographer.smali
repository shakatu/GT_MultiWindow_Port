.class Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;
.super Ljava/lang/Object;
.source "MultiWindowListPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowListPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Choreographer"
.end annotation


# static fields
.field static final DURATION:I = 0xfa


# instance fields
.field mContentAnim:Landroid/animation/AnimatorSet;

.field mPanelHeight:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method


# virtual methods
.method createAnimation(Z)V
    .locals 9
    .parameter "appearing"

    .prologue
    .line 324
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    const v6, 0x7f0d0064

    invoke-virtual {v5, v6}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 325
    .local v3, root:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 328
    .local v1, height:I
    if-eqz p1, :cond_1

    .line 329
    int-to-float v4, v1

    .line 330
    .local v4, start:F
    const/4 v0, 0x0

    .line 336
    .local v0, end:F
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    #getter for: Lcom/android/systemui/multiwindow/MultiWindowListPanel;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->access$200(Lcom/android/systemui/multiwindow/MultiWindowListPanel;)Landroid/view/ViewGroup;

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

    .line 338
    .local v2, posAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_2

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x4000

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_1
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 343
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 345
    :cond_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 346
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 347
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 348
    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 349
    return-void

    .line 332
    .end local v0           #end:F
    .end local v2           #posAnim:Landroid/animation/Animator;
    .end local v4           #start:F
    :cond_1
    const/4 v4, 0x0

    .line 333
    .restart local v4       #start:F
    int-to-float v0, v1

    .restart local v0       #end:F
    goto :goto_0

    .line 338
    .restart local v2       #posAnim:Landroid/animation/Animator;
    :cond_2
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x3f80

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto :goto_1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 359
    const-string v0, "Tablet/MultiWindowListPanel"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 363
    const-string v0, "Tablet/MultiWindowListPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd mVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->this$0:Lcom/android/systemui/multiwindow/MultiWindowListPanel;

    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/multiwindow/MultiWindowListPanel;->setVisibility(I)V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 366
    return-void

    .line 364
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 369
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 372
    return-void
.end method

.method startAnimation(Z)V
    .locals 3
    .parameter "appearing"

    .prologue
    .line 352
    const-string v0, "Tablet/MultiWindowListPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation(appearing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->createAnimation(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 355
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/MultiWindowListPanel$Choreographer;->mVisible:Z

    .line 356
    return-void
.end method
