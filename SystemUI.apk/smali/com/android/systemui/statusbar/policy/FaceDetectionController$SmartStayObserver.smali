.class Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;
.super Landroid/database/ContentObserver;
.source "FaceDetectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FaceDetectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartStayObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    #getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$000(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, isSmartStayMode:I
    const-string v1, "StatusBar.FaceDetectionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange: isSmartStayMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-ne v0, v5, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    #setter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z
    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$102(Lcom/android/systemui/statusbar/policy/FaceDetectionController;Z)Z

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    #getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$200(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    #getter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$100(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Z

    move-result v3

    #calls: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$300(Lcom/android/systemui/statusbar/policy/FaceDetectionController;IZ)V

    .line 72
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    #setter for: Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->access$102(Lcom/android/systemui/statusbar/policy/FaceDetectionController;Z)Z

    goto :goto_0
.end method
