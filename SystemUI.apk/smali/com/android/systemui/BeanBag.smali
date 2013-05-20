.class public Lcom/android/systemui/BeanBag;
.super Landroid/app/Activity;
.source "BeanBag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BeanBag$Board;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBoard:Lcom/android/systemui/BeanBag$Board;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->stopAnimation()V

    .line 417
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->startAnimation()V

    .line 423
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/BeanBag;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 409
    new-instance v0, Lcom/android/systemui/BeanBag$Board;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/BeanBag$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    .line 410
    iget-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {p0, v0}, Lcom/android/systemui/BeanBag;->setContentView(Landroid/view/View;)V

    .line 411
    return-void
.end method
