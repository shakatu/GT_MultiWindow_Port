.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniAppPosition"
.end annotation


# instance fields
.field final X_POSITION_OFFSET:I

.field final Y_POSITION_OFFSET:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;II)V
    .locals 1
    .parameter
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->X_POSITION_OFFSET:I

    .line 1384
    const/16 v0, -0x32

    iput v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->Y_POSITION_OFFSET:I

    .line 1390
    int-to-float v0, p2

    iput v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    .line 1391
    int-to-float v0, p3

    iput v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    .line 1392
    return-void
.end method


# virtual methods
.method calculatePosition(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1398
    .local v0, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 1400
    .local v1, rawY:F
    const/high16 v2, -0x3cb8

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    .line 1401
    const/high16 v2, -0x3db8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    .line 1402
    return-void
.end method
