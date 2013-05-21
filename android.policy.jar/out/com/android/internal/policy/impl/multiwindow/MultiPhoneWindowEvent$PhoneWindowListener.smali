.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneWindowListener"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PhoneWindowListener"


# instance fields
.field private PrevX:I

.field private PrevY:I

.field private longDownX:I

.field private longDownY:I

.field mDoubleTapListener:Landroid/view/View$OnTouchListener;

.field private mIsTouchCanceledByHidingSip:Z

.field private rawX:I

.field private rawY:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1047
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    .line 1039
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    .line 1040
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    .line 1041
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    .line 1042
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    .line 1043
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    .line 1044
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    .line 1045
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    .line 1048
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    .line 1049
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;)V
    .registers 5
    .parameter
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 1051
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    .line 1039
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    .line 1040
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    .line 1041
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    .line 1042
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    .line 1043
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    .line 1044
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    .line 1045
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    .line 1052
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    .line 1053
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v4, 0xa

    const/16 v3, 0x9

    .line 1204
    const/4 v1, -0x1

    .line 1206
    .local v1, hoverIcon:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    .line 1220
    :pswitch_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1b

    .line 1221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_38

    .line 1222
    const/4 v1, 0x5

    .line 1230
    :cond_1b
    :goto_1b
    if-lez v1, :cond_21

    const/4 v2, -0x1

    :try_start_1e
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_40

    .line 1234
    :cond_21
    :goto_21
    const/4 v2, 0x0

    return v2

    .line 1212
    :pswitch_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_30

    .line 1213
    const/16 v1, 0xa

    .line 1214
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_1b

    .line 1215
    :cond_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1b

    .line 1216
    const/4 v1, 0x1

    goto :goto_1b

    .line 1223
    :cond_38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1b

    .line 1224
    const/4 v1, 0x1

    goto :goto_1b

    .line 1231
    :catch_40
    move-exception v0

    .line 1232
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PhoneWindowListener"

    const-string v3, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1206
    nop

    :pswitch_data_4a
    .packed-switch 0x10203b6
        :pswitch_23
        :pswitch_c
        :pswitch_c
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 1057
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    .line 1058
    .local v1, windowMode:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v0, v3, -0x401

    .line 1060
    .local v0, currentLaunchMode:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1073
    :cond_27
    :goto_27
    return v2

    .line 1064
    :cond_28
    const/4 v3, 0x2

    if-eq v0, v3, :cond_27

    const/4 v3, 0x1

    if-eq v0, v3, :cond_27

    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1068
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v3

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v3

    if-nez v3, :cond_27

    .line 1069
    const-string v2, "PhoneWindowListener"

    const-string v3, "Create GhostView by onLongClick"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z

    move-result v2

    goto :goto_27
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 26
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getWindowMode()I

    move-result v17

    .line 1079
    .local v17, windowMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v16

    .line 1080
    .local v16, winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 1081
    .local v12, p:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->arrange:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v5, v0, -0x401

    .line 1084
    .local v5, currentLaunchMode:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v18

    if-eqz v18, :cond_57

    .line 1085
    const/16 v18, 0x0

    .line 1199
    :goto_56
    return v18

    .line 1088
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mDoubleTapListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_74

    .line 1089
    const/16 v18, 0x1

    goto :goto_56

    .line 1092
    :cond_74
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v18

    if-eqz v18, :cond_7d

    .line 1093
    const/16 v18, 0x0

    goto :goto_56

    .line 1096
    :cond_7d
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1097
    .local v4, action:I
    packed-switch v4, :pswitch_data_352

    .line 1195
    :cond_84
    :goto_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v18

    if-eqz v18, :cond_34d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v18

    if-eqz v18, :cond_34d

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    goto :goto_56

    .line 1099
    :pswitch_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static/range {v18 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static/range {v18 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$102(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    .line 1106
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v18

    if-eqz v18, :cond_12d

    .line 1108
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    .line 1109
    const/16 v18, 0x1

    goto/16 :goto_56

    .line 1111
    :cond_12d
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_84

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_84

    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v18

    if-nez v18, :cond_84

    .line 1114
    new-instance v6, Landroid/content/Intent;

    const-string v18, "com.sec.android.multiwindow.TITLEBAR_DRAG_START"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v6, intentForTitleBar:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_84

    .line 1120
    .end local v6           #intentForTitleBar:Landroid/content/Intent;
    :pswitch_159
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    move/from16 v18, v0

    if-eqz v18, :cond_165

    .line 1121
    const/16 v18, 0x1

    goto/16 :goto_56

    .line 1124
    :cond_165
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v10, v0

    .line 1125
    .local v10, newX:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v11, v0

    .line 1126
    .local v11, newY:I
    const/4 v14, 0x0

    .line 1127
    .local v14, tx:I
    const/4 v15, 0x0

    .line 1129
    .local v15, ty:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    move/from16 v18, v0

    sub-int v8, v10, v18

    .line 1130
    .local v8, moveX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    move/from16 v18, v0

    sub-int v9, v11, v18

    .line 1132
    .local v9, moveY:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_197

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_197

    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v18

    if-eqz v18, :cond_1f2

    .line 1134
    :cond_197
    int-to-float v0, v8

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/util/MathUtils;->abs(F)F

    move-result v18

    const/high16 v19, 0x4000

    cmpl-float v18, v18, v19

    if-gtz v18, :cond_1b1

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/util/MathUtils;->abs(F)F

    move-result v18

    const/high16 v19, 0x4000

    cmpl-float v18, v18, v19

    if-lez v18, :cond_84

    .line 1136
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_84

    .line 1137
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1138
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1142
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawX:I

    .line 1143
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->rawY:I

    goto/16 :goto_84

    .line 1147
    :cond_1f2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    move/from16 v18, v0

    sub-int v18, v10, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/util/MathUtils;->abs(F)F

    move-result v18

    const/high16 v19, 0x4000

    cmpl-float v18, v18, v19

    if-gtz v18, :cond_220

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/util/MathUtils;->abs(F)F

    move-result v18

    const/high16 v19, 0x4000

    cmpl-float v18, v18, v19

    if-lez v18, :cond_238

    .line 1149
    :cond_220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    move/from16 v18, v0

    sub-int v14, v10, v18

    .line 1150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    move/from16 v18, v0

    sub-int v15, v11, v18

    .line 1151
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevX:I

    .line 1152
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->PrevY:I

    .line 1155
    :cond_238
    if-nez v14, :cond_240

    if-nez v15, :cond_240

    .line 1156
    const/16 v18, 0x1

    goto/16 :goto_56

    .line 1159
    :cond_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v18

    if-nez v18, :cond_84

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v18

    if-nez v18, :cond_84

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_84

    .line 1161
    const-string v18, "PhoneWindowListener"

    const-string v19, "Create GhostView by ACTION_MOVE"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->longDownY:I

    move/from16 v20, v0

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z
    invoke-static/range {v18 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z

    move-result v18

    goto/16 :goto_56

    .line 1170
    .end local v8           #moveX:I
    .end local v9           #moveY:I
    .end local v10           #newX:I
    .end local v11           #newY:I
    .end local v14           #tx:I
    .end local v15           #ty:I
    :pswitch_287
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->mIsTouchCanceledByHidingSip:Z

    move/from16 v18, v0

    if-eqz v18, :cond_293

    .line 1171
    const/16 v18, 0x1

    goto/16 :goto_56

    .line 1173
    :cond_293
    if-eqz v16, :cond_84

    .line 1174
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_2a7

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_2a7

    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v18

    if-eqz v18, :cond_333

    .line 1177
    :cond_2a7
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 1178
    .local v13, rect:Landroid/graphics/Rect;
    if-eqz v13, :cond_84

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_84

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 1181
    .local v7, lp:Landroid/view/WindowManager$LayoutParams;
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v18, v0

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v19, v0

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v21, v0

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v19, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    invoke-static {v0, v13, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 1183
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1184
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    goto/16 :goto_84

    .line 1188
    .end local v7           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #rect:Landroid/graphics/Rect;
    :cond_333
    new-instance v6, Landroid/content/Intent;

    const-string v18, "com.sec.android.multiwindow.TITLEBAR_DRAG_STOP"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    .restart local v6       #intentForTitleBar:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_84

    .line 1199
    .end local v6           #intentForTitleBar:Landroid/content/Intent;
    :cond_34d
    const/16 v18, 0x0

    goto/16 :goto_56

    .line 1097
    nop

    :pswitch_data_352
    .packed-switch 0x0
        :pswitch_af
        :pswitch_287
        :pswitch_159
        :pswitch_287
    .end packed-switch
.end method
