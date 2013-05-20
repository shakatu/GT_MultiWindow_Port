.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
.super Ljava/lang/Object;
.source "SmartSwitcherSlideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollValue"
.end annotation


# instance fields
.field curPos:F

.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

.field zPos:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;I)V
    .locals 2
    .parameter
    .parameter "index"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->curPos:F

    .line 95
    int-to-float v0, p2

    const/high16 v1, 0x40e0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->zPos:F

    .line 96
    return-void
.end method
