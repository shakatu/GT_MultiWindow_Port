.class public Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;
.super Ljava/lang/Object;
.source "SAppsPanelUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sapps/SAppsPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchOutsideListener"
.end annotation


# instance fields
.field private mPanel:Lcom/android/systemui/sapps/SAppsPanel;

.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanelUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sapps/SAppsPanelUI;Lcom/android/systemui/sapps/SAppsPanel;)V
    .locals 0
    .parameter
    .parameter "panel"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;->mPanel:Lcom/android/systemui/sapps/SAppsPanel;

    .line 170
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 174
    .local v0, action:I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;->mPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/sapps/SAppsPanel;->isInContentArea(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    invoke-virtual {v2, v1}, Lcom/android/systemui/sapps/SAppsPanelUI;->closeSAppsPanel(Z)V

    .line 180
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
