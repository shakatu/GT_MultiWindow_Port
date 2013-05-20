.class Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;
.super Landroid/os/Handler;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/LocationController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/LocationController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->access$100(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->access$100(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    #getter for: Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->access$100(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/LocationController;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->access$102(Lcom/android/systemui/statusbar/policy/LocationController;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method
