.class Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;
.super Landroid/database/ContentObserver;
.source "DoNotDisturb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DoNotDisturb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DormantModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DoNotDisturb;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/DoNotDisturb;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;->this$0:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 205
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;->this$0:Lcom/android/systemui/statusbar/DoNotDisturb;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDoNotDisturbStatus()V

    .line 209
    const-string v0, "StatusBar-DoNotDistrub"

    const-string v1, "Dormant settings changed. DormantModeObserver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method
