.class Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;
.super Landroid/database/ContentObserver;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sapps/SAppsPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpenSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanelUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 1
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 379
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 385
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #getter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mIsNotificationVisible:Z
    invoke-static {v1}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$200(Lcom/android/systemui/sapps/SAppsPanelUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    iget-object v1, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_applications"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #getter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mSpenSetting:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$300(Lcom/android/systemui/sapps/SAppsPanelUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    #calls: Lcom/android/systemui/sapps/SAppsPanelUI;->getNotificationMsg(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$400(Lcom/android/systemui/sapps/SAppsPanelUI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/sapps/SAppsPanelUI;->showNotification(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$500(Lcom/android/systemui/sapps/SAppsPanelUI;Ljava/lang/String;)V

    .line 392
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method
