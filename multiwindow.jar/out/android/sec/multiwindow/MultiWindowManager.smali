.class public Landroid/sec/multiwindow/MultiWindowManager;
.super Landroid/sec/multiwindow/MultiWindowImpl;
.source "MultiWindowManager.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowManager;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ARRANGE_MODE_CASCADE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ARRANGE_MODE_SPLIT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final FLAG_STYLE_FREE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final FLAG_STYLE_MINIMIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final FLAG_STYLE_PINUP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final FLAG_STYLE_POPUP:I = 0x0

.field private static final MAX_RUNNING_TASK:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field public static final ZONE_A:I

.field public static final ZONE_B:I

.field public static final ZONE_MASK:I

.field public static final ZONE_NEXT:I

.field public static final ZONE_SAME:I

.field public static final ZONE_UNKNOWN:I

.field private static mSelf:Landroid/sec/multiwindow/MultiWindowManager;

.field private static sIsMultiWindowEnabled:Z

.field private static sIsMultiWindowPhoneStyle:Z

.field private static sQueried:Z

.field private static sStyleQueried:Z


# instance fields
.field private mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_FREE:I

    .line 41
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_PINUP:I

    .line 45
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_MINIMIZE:I

    .line 49
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_NO_DECORATION:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_POPUP:I

    .line 54
    sget v0, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_SPLITED:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->ARRANGE_MODE_SPLIT:I

    .line 59
    sget v0, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_CASCADE:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->ARRANGE_MODE_CASCADE:I

    .line 64
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_MASK:I

    .line 69
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_A:I

    .line 74
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_B:I

    .line 79
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_UNKNOWN:I

    .line 84
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_SAME:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_SAME:I

    .line 89
    sget v0, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_NEXT:I

    sput v0, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_NEXT:I

    .line 93
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    .line 95
    sput-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sQueried:Z

    .line 97
    sput-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sIsMultiWindowEnabled:Z

    .line 99
    sput-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sStyleQueried:Z

    .line 101
    sput-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sIsMultiWindowPhoneStyle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowImpl;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportAppList:Ljava/util/ArrayList;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportPackageList:Ljava/util/ArrayList;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportComponentList:Ljava/util/ArrayList;

    .line 132
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 134
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 136
    .local v1, activityManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "getFrontActivityPosition"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/sec/multiwindow/MultiWindowManager;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 139
    invoke-static {p1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowPhoneStyle(Landroid/content/Context;)Z

    .line 140
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->loadDefaultConfig()V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .parameter "context"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;
    .registers 2
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMultiWindowInfos(I)Ljava/util/List;
    .registers 3
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSelf(Landroid/content/Context;)Landroid/sec/multiwindow/MultiWindowManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 115
    if-nez p0, :cond_4

    .line 116
    const/4 v0, 0x0

    .line 121
    :goto_3
    return-object v0

    .line 118
    :cond_4
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    if-nez v0, :cond_f

    .line 119
    new-instance v0, Landroid/sec/multiwindow/MultiWindowManager;

    invoke-direct {v0, p0}, Landroid/sec/multiwindow/MultiWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    .line 121
    :cond_f
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    goto :goto_3
.end method

.method public static getService()Landroid/sec/multiwindow/IMultiWindowService;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isMultiWindowPhoneStyle(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 302
    if-nez p0, :cond_4

    .line 303
    const/4 v1, 0x0

    .line 312
    :goto_3
    return v1

    .line 305
    :cond_4
    sget-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sStyleQueried:Z

    if-nez v1, :cond_19

    .line 306
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sStyleQueried:Z

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 308
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_19

    .line 309
    sget-object v1, Landroid/sec/multiwindow/Constants$PackageManager;->FEATURE_MULTIWINDOW_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sIsMultiWindowPhoneStyle:Z

    .line 312
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_19
    sget-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sIsMultiWindowPhoneStyle:Z

    goto :goto_3
.end method

.method public static isMultiWindowServiceEnabled(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 284
    if-nez p0, :cond_4

    .line 285
    const/4 v1, 0x0

    .line 294
    :goto_3
    return v1

    .line 287
    :cond_4
    sget-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sQueried:Z

    if-nez v1, :cond_19

    .line 288
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sQueried:Z

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 290
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_19

    .line 291
    sget-object v1, Landroid/sec/multiwindow/Constants$PackageManager;->FEATURE_MULTIWINDOW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sIsMultiWindowEnabled:Z

    .line 294
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_19
    sget-boolean v1, Landroid/sec/multiwindow/MultiWindowManager;->sIsMultiWindowEnabled:Z

    goto :goto_3
.end method


# virtual methods
.method public arrange(I)V
    .registers 4
    .parameter "arrangeMode"

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/sec/multiwindow/Constants$Intent;->ACTION_ARRANGE_WINDOWS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, arrangeIntent:Landroid/content/Intent;
    sget-object v1, Landroid/sec/multiwindow/Constants$Intent;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public arrangeCascade()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    sget v0, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_CASCADE:I

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->arrange(I)V

    .line 210
    return-void
.end method

.method public arrangeSplit()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    sget v0, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_SPLITED:I

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->arrange(I)V

    .line 202
    return-void
.end method

.method public arrangeTemplate(I)Z
    .registers 3
    .parameter "template"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public arrangeWindows(I)Z
    .registers 3
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public capture(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public exchangeSplitScreens()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public finishAllWindow()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public finishAppPid(I)Z
    .registers 3
    .parameter "pid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public getArrangeMode()I
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->getArrange(Landroid/content/res/Configuration;)I

    move-result v0

    sget v1, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public getFrontActivityPosition()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 144
    const-string v0, "getFrontActivityPosition"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/MultiWindowManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMultiLayout()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public getMultiWindowInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiWindowList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiWindowList(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .parameter "owner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiWindowListOwnerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPinupWindow()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPinupWindowList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRegisteredList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v6, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 245
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 246
    .local v2, intent:Landroid/content/Intent;
    const/16 v7, 0xc0

    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 248
    .local v5, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v7, Landroid/sec/multiwindow/Constants$PackageManager;->FEATURE_MULTIWINDOW_DOWNLOADABLE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 250
    .local v0, bSupportDownloadable:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 251
    .local v4, r:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_28

    .line 252
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v7, :cond_4c

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    sget-object v8, Landroid/sec/multiwindow/Constants$Intent;->CATEGORY_MULTIWINDOW_LAUNCHER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 253
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 254
    :cond_4c
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportAppList:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 255
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportPackageList:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportComponentList:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 259
    :cond_70
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 260
    :cond_76
    if-eqz v0, :cond_28

    goto :goto_28

    .line 266
    .end local v4           #r:Landroid/content/pm/ResolveInfo;
    :cond_79
    return-object v6
.end method

.method public getResumedWindow()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningList(I)Ljava/util/List;
    .registers 5
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 276
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getRunningWindowList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSplitList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getVisibleWindowList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowInstance(Landroid/content/Intent;)Landroid/sec/multiwindow/IMultiWindow;
    .registers 3
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 4
    .parameter "owner"
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public isPermissionOff()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public isPinup(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public isPinup(Landroid/content/ComponentName;I)Z
    .registers 4
    .parameter "componentName"
    .parameter "taskId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public loadDefaultConfig()V
    .registers 11

    .prologue
    .line 316
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070050

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, supportedAppList:[Ljava/lang/String;
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportAppList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, supportedPackageList:[Ljava/lang/String;
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportPackageList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070052

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, supportedComponentList:[Ljava/lang/String;
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportComponentList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 326
    :try_start_42
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_MultiWindow_AddOnApp"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, cscAddOnApp:Ljava/lang/String;
    if-eqz v1, :cond_8a

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 329
    .local v2, cscAddOnAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_62
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    .local v0, addOnApp:Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 331
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 333
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_62

    .line 339
    .end local v0           #addOnApp:Ljava/lang/String;
    .end local v1           #cscAddOnApp:Ljava/lang/String;
    .end local v2           #cscAddOnAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_89
    move-exception v7

    .line 342
    :cond_8a
    return-void

    .line 334
    .restart local v0       #addOnApp:Ljava/lang/String;
    .restart local v1       #cscAddOnApp:Ljava/lang/String;
    .restart local v2       #cscAddOnAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_8b
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 335
    iget-object v7, p0, Landroid/sec/multiwindow/MultiWindowManager;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_98
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_98} :catch_89

    goto :goto_62
.end method

.method public makeIntent(ILandroid/graphics/Rect;)Landroid/content/Intent;
    .registers 7
    .parameter "flags"
    .parameter "rect"

    .prologue
    .line 155
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v1, intent:Landroid/content/Intent;
    sget v2, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_FREE:I

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_PINUP:I

    or-int/2addr v2, v3

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_MINIMIZE:I

    or-int/2addr v2, v3

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_POPUP:I

    or-int/2addr v2, v3

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_A:I

    or-int/2addr v2, v3

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_B:I

    or-int/2addr v2, v3

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_UNKNOWN:I

    or-int/2addr v2, v3

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_SAME:I

    or-int/2addr v2, v3

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->ZONE_NEXT:I

    or-int/2addr v2, v3

    xor-int/lit8 v0, v2, -0x1

    .line 159
    .local v0, flagMask:I
    and-int v2, p1, v0

    if-nez v2, :cond_3e

    .line 161
    sget v2, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_FREE:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_3e

    .line 162
    sget-boolean v2, Landroid/sec/multiwindow/MultiWindowManager;->sIsMultiWindowPhoneStyle:Z

    if-eqz v2, :cond_39

    .line 163
    sget v2, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_PINUP:I

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_MINIMIZE:I

    or-int/2addr v2, v3

    sget v3, Landroid/sec/multiwindow/MultiWindowManager;->FLAG_STYLE_POPUP:I

    or-int/2addr v2, v3

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr p1, v2

    .line 165
    :cond_39
    sget-object v2, Landroid/sec/multiwindow/Constants$Intent;->EXTRA_WINDOW_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    :cond_3e
    sget-boolean v2, Landroid/sec/multiwindow/MultiWindowManager;->sIsMultiWindowPhoneStyle:Z

    if-nez v2, :cond_49

    .line 170
    if-eqz p2, :cond_49

    .line 171
    sget-object v2, Landroid/sec/multiwindow/Constants$Intent;->EXTRA_WINDOW_POSITION:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    :cond_49
    return-object v1
.end method

.method public minimizeAll()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    sget v0, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_MINIMIZED_ALL:I

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->arrange(I)V

    .line 218
    return-void
.end method

.method public notifyFinished(Landroid/app/Activity;)Z
    .registers 3
    .parameter "selfActivity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public notifyForceFinished(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public notifySIP(I)Z
    .registers 3
    .parameter "height"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public notifyStarted(Landroid/app/Activity;)Z
    .registers 3
    .parameter "selfActivity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public orientationChangeRestore(Landroid/content/ComponentName;I)Z
    .registers 4
    .parameter "cName"
    .parameter "orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public postResume(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;II)Landroid/sec/multiwindow/IMultiWindow;
    .registers 5
    .parameter "componentName"
    .parameter "minWidth"
    .parameter "minHeight"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;IIZ)Landroid/sec/multiwindow/IMultiWindow;
    .registers 6
    .parameter "componentName"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isfixedRatio"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;Ljava/util/List;)Landroid/sec/multiwindow/IMultiWindow;
    .registers 4
    .parameter "componentName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/sec/multiwindow/IMultiWindow;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    .local p2, windowSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 4
    .parameter "owner"
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public removeMultiWindow(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "owner"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public removeMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 4
    .parameter "owner"
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public restoreAll()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    sget v0, Landroid/sec/multiwindow/Constants$Configuration;->ARRANGE_RESTORED_ALL:I

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->arrange(I)V

    .line 226
    return-void
.end method

.method public screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendCreateAction(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public sendDestroyAction(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public sendFinishAction(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public sendPauseAction(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public sendResumeAction(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public sendStartAction(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public setMultiLayout(Z)Z
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public setMultiWindowMode(Landroid/sec/multiwindow/MultiWindowType;)Z
    .registers 3
    .parameter "winType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferenceValue(Z)V
    .registers 2
    .parameter "b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    return-void
.end method

.method public showSwitchWindowGuideDialog(Landroid/content/Context;)V
    .registers 2
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    return-void
.end method

.method public startLauncher()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public startLauncher(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public startLauncher(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public startLauncher(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4
    .parameter "context"
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public startSplitScreens(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 4
    .parameter "Left"
    .parameter "Right"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public startSplitScreens(Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .registers 4
    .parameter "Left"
    .parameter "Right"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public startSplitScreens(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .registers 4
    .parameter "Left"
    .parameter "Right"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public startSplitScreensForLauncher(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 4
    .parameter "Left"
    .parameter "Right"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public unRegisterMultiWindow(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method
