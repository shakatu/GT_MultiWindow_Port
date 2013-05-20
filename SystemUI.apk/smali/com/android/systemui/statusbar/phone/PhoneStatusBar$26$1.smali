.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

.field final synthetic val$notifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3526
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->val$notifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 3531
    const/16 v0, 0xa

    .line 3532
    .local v0, ROW_DELAY_DECREMENT:I
    const/16 v2, 0x8c

    .line 3533
    .local v2, currentDelay:I
    const/4 v4, 0x0

    .line 3538
    .local v4, totalDelay:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->val$notifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setViewRemoval(Z)V

    .line 3540
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;)V

    iput-object v8, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 3551
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 3555
    .local v6, width:I
    mul-int/lit8 v5, v6, 0x8

    .line 3556
    .local v5, velocity:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3557
    .local v1, _v:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$2;

    invoke-direct {v8, p0, v1, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;Landroid/view/View;I)V

    int-to-long v9, v4

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3563
    const/16 v7, 0x32

    add-int/lit8 v8, v2, -0xa

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3564
    add-int/2addr v4, v2

    goto :goto_0

    .line 3571
    .end local v1           #_v:Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;)V

    add-int/lit16 v9, v4, 0xe1

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3577
    return-void
.end method
