.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentDescription"
.end annotation


# instance fields
.field private ci:Landroid/content/pm/ComponentInfo;

.field private focus:Z

.field private iconInfo:Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;

.field private label:Ljava/lang/String;

.field private mIconView:Landroid/view/View;

.field private mIsChosen:Z

.field private mPreview:Landroid/view/View;

.field private mPreviewAnim:Landroid/view/animation/AnimationSet;

.field private name:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    .locals 3
    .parameter
    .parameter "componentInfo"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 391
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->focus:Z

    .line 385
    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    .line 387
    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreview:Landroid/view/View;

    .line 388
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIsChosen:Z

    .line 389
    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreviewAnim:Landroid/view/animation/AnimationSet;

    .line 392
    iput-object p2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    .line 393
    new-instance v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->iconInfo:Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    .line 395
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;

    .line 396
    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    return-object v0
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreview:Landroid/view/View;

    return-object v0
.end method

.method public getPreviewAnimation()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreviewAnim:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public isChosen()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIsChosen:Z

    return v0
.end method

.method public setChosen(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIsChosen:Z

    .line 429
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "focused"

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->focus:Z

    .line 400
    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    .line 408
    return-void
.end method

.method public setPreview(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreview:Landroid/view/View;

    .line 417
    return-void
.end method

.method public setPreviewAnimation(Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreviewAnim:Landroid/view/animation/AnimationSet;

    .line 433
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentDescription{label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIconInfo()V
    .locals 3

    .prologue
    .line 448
    new-instance v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->iconInfo:Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;

    .line 449
    return-void
.end method

.method public updateLabel()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public updatePreview()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 468
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreview:Landroid/view/View;

    if-nez v2, :cond_0

    .line 490
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreview:Landroid/view/View;

    const v3, 0x7f0d0062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 473
    .local v0, previewIcon:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->iconInfo:Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;->mPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreview:Landroid/view/View;

    const v3, 0x7f0d0063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 476
    .local v1, previewLabel:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIsChosen:Z

    if-eqz v2, :cond_1

    .line 479
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f070007

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 480
    const v2, 0x3ecccccd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 481
    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 483
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreview:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 485
    :cond_1
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 486
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 487
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 488
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mPreview:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;
    invoke-static {v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public updateResources(Z)V
    .locals 5
    .parameter "isPortrait"

    .prologue
    .line 452
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 465
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    const v4, 0x7f0d004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 457
    .local v0, appIcon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->iconInfo:Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->focus:Z

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;->getIcon(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 458
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    const v4, 0x7f0d0050

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 461
    .local v1, appLabel:Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->focus:Z

    if-eqz v3, :cond_1

    const v3, -0xd74401

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    goto :goto_0

    .line 461
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method
