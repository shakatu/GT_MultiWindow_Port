.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastColorDrawable"
.end annotation


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 3868
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3869
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;->mColor:I

    .line 3870
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 3874
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;->mColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3875
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 3887
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 3879
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 3892
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 3896
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 3883
    return-void
.end method
