.class public Lcom/android/server/sec/ClippedItemViewContainer;
.super Landroid/widget/FrameLayout;
.source "ClippedItemViewContainer.java"


# instance fields
.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mIsDisabled:Z

.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sec/ClippedItemViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    .line 63
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x4d3abcff

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 64
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, -0x8000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 72
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 15
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, childView:Landroid/view/View;
    instance-of v9, p2, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_49

    move-object v6, p2

    .line 116
    check-cast v6, Landroid/widget/LinearLayout;

    .line 117
    .local v6, ll:Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 123
    .end local v6           #ll:Landroid/widget/LinearLayout;
    :goto_d
    iget-boolean v9, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v9, :cond_17

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_92

    .line 124
    :cond_17
    iget-object v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 125
    .local v3, colorFilter:Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_21

    iget-object v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 127
    :cond_21
    instance-of v9, v2, Landroid/widget/ImageView;

    if-eqz v9, :cond_4b

    move-object v5, v2

    .line 128
    check-cast v5, Landroid/widget/ImageView;

    .line 129
    .local v5, iv:Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 131
    .local v4, d:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_31

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 132
    :cond_31
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 134
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3a

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    :cond_3a
    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 138
    .local v7, ret:Z
    if-eqz v4, :cond_43

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 139
    :cond_43
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 175
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v3           #colorFilter:Landroid/graphics/PorterDuffColorFilter;
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v7           #ret:Z
    :cond_48
    :goto_48
    return v7

    .line 119
    :cond_49
    move-object v2, p2

    goto :goto_d

    .line 143
    .restart local v3       #colorFilter:Landroid/graphics/PorterDuffColorFilter;
    :cond_4b
    instance-of v9, v2, Landroid/webkit/WebView;

    if-eqz v9, :cond_62

    .line 144
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 145
    .restart local v1       #bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_58

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 147
    :cond_58
    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 149
    .restart local v7       #ret:Z
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_48

    .line 154
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v7           #ret:Z
    :cond_62
    instance-of v9, v2, Landroid/widget/TextView;

    if-eqz v9, :cond_92

    move-object v8, v2

    .line 155
    check-cast v8, Landroid/widget/TextView;

    .line 156
    .local v8, textChild:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 158
    .restart local v1       #bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_72

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 159
    :cond_72
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 161
    .local v0, before:Landroid/graphics/ColorFilter;
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 163
    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 166
    .restart local v7       #ret:Z
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 167
    :cond_8a
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_48

    .line 175
    .end local v0           #before:Landroid/graphics/ColorFilter;
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v3           #colorFilter:Landroid/graphics/PorterDuffColorFilter;
    .end local v7           #ret:Z
    .end local v8           #textChild:Landroid/widget/TextView;
    :cond_92
    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    goto :goto_48
.end method

.method protected drawableStateChanged()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->getDrawableState()[I

    move-result-object v2

    .line 81
    .local v2, state:[I
    array-length v0, v2

    .line 82
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_31

    .line 84
    aget v3, v2, v1

    const v4, 0x101009e

    if-ne v3, v4, :cond_15

    .line 85
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    .line 88
    :cond_15
    aget v3, v2, v1

    const v4, 0x10100a7

    if-ne v3, v4, :cond_2e

    .line 89
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->invalidate()V

    .line 91
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2d

    const-string v3, "ClipboardServiceEx"

    const-string v4, "pressed !!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2d
    :goto_2d
    return-void

    .line 82
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 99
    :cond_31
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v3, :cond_39

    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    if-eqz v3, :cond_2d

    .line 100
    :cond_39
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    .line 101
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->invalidate()V

    goto :goto_2d
.end method
