.class public Lcom/android/systemui/sapps/SAppsPanelUI;
.super Lcom/android/systemui/SystemUI;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;,
        Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;
    }
.end annotation


# static fields
.field private static final ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final DEBUG:Z = false

.field private static final FEATURE_APP_PANEL:Z = false

.field private static final FEATURE_CALL_MEMO:Z = false

.field private static final KEY_PEN_SETTINGS:Ljava/lang/String; = "pen_applications"

.field private static final KEY_QUICK_PANEL_LAUNCH:Ljava/lang/String; = "Quick_Panel_Launch"

.field private static final NOTIFICATION_ID:I = 0x1389

.field private static final PEN_SETTINGS_NONE:Ljava/lang/String; = "None"

.field private static final PEN_SETTINGS_TRAY:Ljava/lang/String; = "Shortcuts toolbar"

.field private static final TAG:Ljava/lang/String; = "SAppsPanelUI"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallScreenState:I

.field mCloseSAppsPanel:Ljava/lang/reflect/Method;

.field private mIsNotificationVisible:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mOpenSAppsPanel:Ljava/lang/reflect/Method;

.field private mPanelClosed:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

.field mSAppsTrayClass:Ljava/lang/Class;

.field private mSpenSetting:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    .line 56
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    .line 57
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    .line 58
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    .line 59
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 60
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    .line 61
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 150
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$1;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$2;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sapps/SAppsPanelUI;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->launchSPenApps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/sapps/SAppsPanelUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/sapps/SAppsPanelUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mIsNotificationVisible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/sapps/SAppsPanelUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSpenSetting:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/sapps/SAppsPanelUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->getNotificationMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/sapps/SAppsPanelUI;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->showNotification(Ljava/lang/String;)V

    return-void
.end method

.method private dimissKeyguard()V
    .locals 2

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getNotificationMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "value"

    .prologue
    .line 358
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00c4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 360
    .local v2, msg:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    const-string v3, "None"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    :cond_0
    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 362
    :cond_1
    const-string v3, "Shortcuts toolbar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 366
    :cond_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, component:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/sapps/SAppsPanel;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, appName:Ljava/lang/String;
    const-string v3, "%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private hideNotification()V
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mIsNotificationVisible:Z

    .line 354
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 355
    return-void
.end method

.method private isSecureKeyguard(Z)Z
    .locals 3
    .parameter "isKeyGuardLocked"

    .prologue
    .line 285
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 294
    :goto_0
    return v1

    .line 286
    :cond_0
    const/4 v1, 0x0

    .line 288
    .local v1, secure:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchSPenApps(Landroid/content/Intent;)V
    .locals 8
    .parameter "penIntent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    const-string v5, "penInsert"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 198
    .local v4, penInsert:Z
    const-string v5, "isFactoryMode"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 199
    .local v0, isFactoryMode:Z
    const-string v5, "isScreenOn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 200
    .local v3, isScreenOn:Z
    const-string v5, "isKeyguardLocked"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 201
    .local v1, isKeyguardLocked:Z
    const-string v5, "Quick_Panel_Launch"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 207
    .local v2, isQuickPanelLaunch:Z
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_applications"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSpenSetting:Ljava/lang/String;

    .line 209
    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 213
    :cond_0
    if-nez v0, :cond_3

    .line 214
    if-nez v2, :cond_1

    .line 217
    :cond_1
    iget v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 224
    :cond_2
    iget v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCallScreenState:I

    if-nez v5, :cond_3

    invoke-direct {p0, v1}, Lcom/android/systemui/sapps/SAppsPanelUI;->isSecureKeyguard(Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 271
    :cond_3
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 10
    .parameter "notificationText"

    .prologue
    const v9, 0x7f0a00c3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 340
    iput-boolean v8, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mIsNotificationVisible:Z

    .line 341
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f020061

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 343
    .local v1, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.pen.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, notificationIntent:Landroid/content/Intent;
    const-string v3, "Quick_Panel_Launch"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 347
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 348
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 349
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x1389

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 350
    return-void
.end method


# virtual methods
.method public closeSAppsPanel(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->getPanelVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 301
    if-nez p1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    goto :goto_0

    .line 310
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 142
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 148
    .local v0, isPortrait:Z
    :goto_0
    return-void

    .line 144
    .end local v0           #isPortrait:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openSAppsPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->getPanelVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 322
    iput-boolean v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 323
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setFocusable(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setFocusableInTouchMode(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->requestFocus()Z

    .line 337
    :cond_1
    return-void

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0

    .line 328
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 8

    .prologue
    .line 83
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f030009

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/sapps/SAppsPanel;

    iput-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    .line 86
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 87
    .local v4, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 88
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    new-instance v6, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;

    iget-object v7, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;Lcom/android/systemui/sapps/SAppsPanel;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/sapps/SAppsPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7de

    const v6, 0x1c20100

    const/4 v7, -0x3

    invoke-direct {v3, v5, v6, v7}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 99
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x15

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    const v5, 0x7f0c004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    const v5, 0x7f0c004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    const-string v5, "SAppsPanel"

    invoke-virtual {v3, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    const/16 v5, 0x31

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 107
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v5, v6, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v5, p0}, Lcom/android/systemui/sapps/SAppsPanel;->setCallView(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    .line 111
    :try_start_0
    const-string v5, "com.android.systemui.sapps.SAppsPanel"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    .line 112
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    const-string v6, "closeSAppsPanel"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    .line 113
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    const-string v6, "openSAppsPanel"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 122
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 124
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v5, :cond_1

    .line 125
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mWindowManager:Landroid/view/IWindowManager;

    .line 127
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_2

    .line 128
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 129
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    .line 136
    .local v0, contentObserver:Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    return-void

    .line 114
    .end local v0           #contentObserver:Lcom/android/systemui/sapps/SAppsPanelUI$SpenSettingObserver;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 117
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
