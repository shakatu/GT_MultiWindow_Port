.class Lcom/android/systemui/statusbar/policy/AutoRotateController$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "AutoRotateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AutoRotateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    #calls: Lcom/android/systemui/statusbar/policy/AutoRotateController;->updateState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->access$000(Lcom/android/systemui/statusbar/policy/AutoRotateController;)V

    .line 36
    return-void
.end method
