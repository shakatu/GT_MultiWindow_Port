.class Lcom/android/systemui/sapps/SAppsPanelUI$2;
.super Landroid/telephony/PhoneStateListener;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sapps/SAppsPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanelUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #setter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I
    invoke-static {v0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$102(Lcom/android/systemui/sapps/SAppsPanelUI;I)I

    .line 193
    return-void
.end method
