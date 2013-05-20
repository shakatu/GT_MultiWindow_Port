.class public final Lcom/android/systemui/statusbar/policy/AutoRotateController;
.super Ljava/lang/Object;
.source "AutoRotateController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;
    }
.end annotation


# instance fields
.field private mAutoRotation:Z

.field private final mCallbacks:Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;

.field private final mCheckbox:Landroid/widget/CompoundButton;

.field private final mContext:Landroid/content/Context;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;)V
    .locals 1
    .parameter "context"
    .parameter "checkbox"
    .parameter "callbacks"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;-><init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mCheckbox:Landroid/widget/CompoundButton;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mCallbacks:Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mCheckbox:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->updateState()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AutoRotateController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mCheckbox:Landroid/widget/CompoundButton;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    .line 68
    .local v0, visible:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mCallbacks:Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;->setRotationLockControlVisibility(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mCheckbox:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 70
    return-void

    .line 64
    .end local v0           #visible:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    if-eq p2, v0, :cond_0

    .line 53
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 56
    :cond_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 61
    return-void
.end method
