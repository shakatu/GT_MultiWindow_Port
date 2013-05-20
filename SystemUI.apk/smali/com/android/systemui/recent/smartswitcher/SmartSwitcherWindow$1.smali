.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;
.super Ljava/lang/Object;
.source "SmartSwitcherWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->updateThumbnailAndIconInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 742
    const/4 v0, 0x5

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(I)V

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_0
    return-void
.end method
