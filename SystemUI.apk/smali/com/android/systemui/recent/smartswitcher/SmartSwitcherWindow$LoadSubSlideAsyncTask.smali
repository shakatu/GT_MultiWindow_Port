.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;
.super Landroid/os/AsyncTask;
.source "SmartSwitcherWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSubSlideAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 649
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 20
    .parameter "params"

    .prologue
    .line 653
    const/4 v2, 0x4

    new-array v8, v2, [F

    fill-array-data v8, :array_0

    .line 655
    .local v8, bgColor:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 657
    .local v9, display:Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 658
    .local v11, displayWidth:I
    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 660
    .local v10, displayHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v15, v2

    .line 661
    .local v15, reSizeWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v14, v2

    .line 663
    .local v14, reSizeHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int v17, v15, v2

    .line 664
    .local v17, slideWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int v16, v14, v2

    .line 666
    .local v16, slideHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v13

    .line 667
    .local v13, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v13}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v19

    .line 669
    .local v19, width:F
    const/4 v12, 0x1

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recent/TaskDescription;

    .line 671
    .local v18, td:Lcom/android/systemui/recent/TaskDescription;
    new-instance v1, Lcom/sec/android/samsunganimation/slide/SASlide;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/samsunganimation/slide/SASlide;-><init>(IIFFFF[F)V

    .line 673
    .local v1, newSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #calls: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    invoke-static {v2, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #calls: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$500(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    const/high16 v2, 0x3f00

    mul-float v2, v2, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getInitPos(II)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPosition(FF)V

    .line 681
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getZPos(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(F)V

    .line 683
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setAntiAliasing(Z)V

    .line 684
    invoke-virtual {v13, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->addSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 686
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 687
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recent/TaskDescription;->isLoaded()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v2, v12}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(I)V

    .line 669
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 678
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v3

    invoke-virtual {v2, v12, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getInitPos(II)F

    move-result v2

    int-to-float v3, v10

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPosition(FF)V

    goto :goto_1

    .line 693
    .end local v1           #newSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v18           #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 653
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 649
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 698
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->startAni()V

    .line 701
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->updateThumbnailAndIconInBackground()V

    .line 702
    return-void
.end method
