.class Lcom/android/systemui/recent/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final CLOSE_DURATION:I = 0xe6

.field private static final DEBUG:Z = false

.field private static final OPEN_DURATION:I = 0x88

.field private static final SCRIM_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "RecentsPanelView"


# instance fields
.field final HYPERSPACE_OFFRAMP:I

.field mContentAnim:Landroid/animation/AnimatorSet;

.field mContentView:Landroid/view/View;

.field mListener:Landroid/animation/Animator$AnimatorListener;

.field mNoRecentAppsView:Landroid/view/View;

.field mPanelHeight:I

.field mRootView:Lcom/android/systemui/recent/RecentsPanelView;

.field mScrimView:Landroid/view/View;

.field mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "root"
    .parameter "scrim"
    .parameter "content"
    .parameter "noRecentApps"
    .parameter "listener"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/recent/Choreographer;->HYPERSPACE_OFFRAMP:I

    .line 54
    iput-object p1, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    .line 56
    iput-object p3, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    .line 57
    iput-object p5, p0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 58
    iput-object p4, p0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    .line 59
    return-void
.end method


# virtual methods
.method createAnimation(Z)V
    .locals 19
    .parameter "appearing"

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v13

    .line 67
    .local v13, y:F
    if-eqz p1, :cond_5

    .line 70
    const/high16 v14, 0x4348

    cmpg-float v14, v13, v14

    if-gez v14, :cond_4

    move v12, v13

    .line 71
    .local v12, start:F
    :goto_0
    const/4 v5, 0x0

    .line 77
    .local v5, end:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const-string v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v12, v16, v17

    const/16 v17, 0x1

    aput v5, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 79
    .local v9, posAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_6

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x4020

    invoke-direct {v14, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_2
    invoke-virtual {v9, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    if-eqz p1, :cond_7

    const-wide/16 v14, 0x88

    :goto_3
    invoke-virtual {v9, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 84
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const-string v16, "alpha"

    const/4 v14, 0x2

    new-array v0, v14, [F

    move-object/from16 v17, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getAlpha()F

    move-result v18

    aput v18, v17, v14

    const/16 v18, 0x1

    if-eqz p1, :cond_8

    const/high16 v14, 0x3f80

    :goto_4
    aput v14, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 86
    .local v6, fadeAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_9

    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v15, 0x3f80

    invoke-direct {v14, v15}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_5
    invoke-virtual {v6, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    if-eqz p1, :cond_a

    const-wide/16 v14, 0x88

    :goto_6
    invoke-virtual {v6, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 91
    const/4 v8, 0x0

    .line 92
    .local v8, noRecentAppsFadeAnim:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    const-string v16, "alpha"

    const/4 v14, 0x2

    new-array v0, v14, [F

    move-object/from16 v17, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getAlpha()F

    move-result v18

    aput v18, v17, v14

    const/16 v18, 0x1

    if-eqz p1, :cond_b

    const/high16 v14, 0x3f80

    :goto_7
    aput v14, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 96
    if-eqz p1, :cond_c

    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v15, 0x3f80

    invoke-direct {v14, v15}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_8
    invoke-virtual {v8, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    if-eqz p1, :cond_d

    const-wide/16 v14, 0x88

    :goto_9
    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 102
    :cond_0
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 105
    .local v4, builder:Landroid/animation/AnimatorSet$Builder;
    if-eqz v8, :cond_1

    .line 106
    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 109
    :cond_1
    if-eqz p1, :cond_11

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    .local v1, background:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 112
    const-string v15, "alpha"

    const/4 v14, 0x2

    new-array v0, v14, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    if-eqz p1, :cond_e

    const/4 v14, 0x0

    :goto_a
    aput v14, v16, v17

    const/16 v17, 0x1

    if-eqz p1, :cond_f

    const/16 v14, 0xff

    :goto_b
    aput v14, v16, v17

    move-object/from16 v0, v16

    invoke-static {v1, v15, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 114
    .local v2, bgAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_10

    const-wide/16 v14, 0x190

    :goto_c
    invoke-virtual {v2, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 115
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 132
    .end local v1           #background:Landroid/graphics/drawable/Drawable;
    .end local v2           #bgAnim:Landroid/animation/Animator;
    :cond_2
    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v14, :cond_3

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    :cond_3
    return-void

    .line 70
    .end local v4           #builder:Landroid/animation/AnimatorSet$Builder;
    .end local v5           #end:F
    .end local v6           #fadeAnim:Landroid/animation/Animator;
    .end local v8           #noRecentAppsFadeAnim:Landroid/animation/Animator;
    .end local v9           #posAnim:Landroid/animation/Animator;
    .end local v12           #start:F
    :cond_4
    const/high16 v12, 0x4348

    goto/16 :goto_0

    .line 73
    :cond_5
    move v12, v13

    .line 74
    .restart local v12       #start:F
    move v5, v13

    .restart local v5       #end:F
    goto/16 :goto_1

    .line 79
    .restart local v9       #posAnim:Landroid/animation/Animator;
    :cond_6
    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v15, 0x4020

    invoke-direct {v14, v15}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto/16 :goto_2

    .line 82
    :cond_7
    const-wide/16 v14, 0xe6

    goto/16 :goto_3

    .line 84
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 86
    .restart local v6       #fadeAnim:Landroid/animation/Animator;
    :cond_9
    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v15, 0x4020

    invoke-direct {v14, v15}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto/16 :goto_5

    .line 89
    :cond_a
    const-wide/16 v14, 0xe6

    goto/16 :goto_6

    .line 94
    .restart local v8       #noRecentAppsFadeAnim:Landroid/animation/Animator;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 96
    :cond_c
    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x3f80

    invoke-direct {v14, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto/16 :goto_8

    .line 99
    :cond_d
    const-wide/16 v14, 0xe6

    goto/16 :goto_9

    .line 112
    .restart local v1       #background:Landroid/graphics/drawable/Drawable;
    .restart local v4       #builder:Landroid/animation/AnimatorSet$Builder;
    :cond_e
    const/16 v14, 0xff

    goto :goto_a

    :cond_f
    const/4 v14, 0x0

    goto :goto_b

    .line 114
    .restart local v2       #bgAnim:Landroid/animation/Animator;
    :cond_10
    const-wide/16 v14, 0xe6

    goto :goto_c

    .line 118
    .end local v1           #background:Landroid/graphics/drawable/Drawable;
    .end local v2           #bgAnim:Landroid/animation/Animator;
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v14}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 119
    .local v11, res:Landroid/content/res/Resources;
    const/high16 v14, 0x7f09

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 120
    .local v7, isTablet:Z
    if-nez v7, :cond_2

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    const v15, 0x7f0d0025

    invoke-virtual {v14, v15}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 123
    .local v10, recentsTransitionBackground:Landroid/view/View;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 124
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v14, -0x100

    invoke-direct {v3, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 125
    .local v3, bgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    const-string v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [I

    fill-array-data v15, :array_0

    invoke-static {v3, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 127
    .restart local v2       #bgAnim:Landroid/animation/Animator;
    const-wide/16 v14, 0xe6

    invoke-virtual {v2, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 128
    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v15, 0x3f80

    invoke-direct {v14, v15}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_d

    .line 126
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method jumpTo(Z)V
    .locals 3
    .parameter "appearing"

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_2

    const/16 v1, 0xff

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    const v2, 0x7f0d0025

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, recentsTransitionBackground:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->requestLayout()V

    .line 164
    return-void

    .line 156
    .end local v0           #recentsTransitionBackground:Landroid/view/View;
    :cond_1
    iget v1, p0, Lcom/android/systemui/recent/Choreographer;->mPanelHeight:I

    int-to-float v1, v1

    goto :goto_0

    .line 158
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/Choreographer;->mVisible:Z

    .line 175
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/recent/Choreographer;->mVisible:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->hideWindow()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 184
    iput-object v2, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 185
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 188
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 191
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 0
    .parameter "h"

    .prologue
    .line 168
    iput p1, p0, Lcom/android/systemui/recent/Choreographer;->mPanelHeight:I

    .line 169
    return-void
.end method

.method startAnimation(Z)V
    .locals 3
    .parameter "appearing"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/Choreographer;->createAnimation(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 152
    iput-boolean p1, p0, Lcom/android/systemui/recent/Choreographer;->mVisible:Z

    .line 153
    return-void
.end method
