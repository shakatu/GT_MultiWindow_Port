.class public Landroid/sec/multiwindow/Constants$PackageManager;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageManager"
.end annotation


# static fields
.field public static FEATURE_MULTIWINDOW:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_DOWNLOADABLE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_PHONE:Ljava/lang/String;

.field public static FEATURE_MULTIWINDOW_TABLET:Ljava/lang/String;

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 89
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "FEATURE_MULTIWINDOW"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "FEATURE_MULTIWINDOW_PHONE"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "FEATURE_MULTIWINDOW_TABLET"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "FEATURE_MULTIWINDOW_DOWNLOADABLE"

    aput-object v6, v4, v5

    sput-object v4, Landroid/sec/multiwindow/Constants$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    .line 97
    sget-object v4, Landroid/sec/multiwindow/Constants$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 98
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v0, :cond_3d

    .line 100
    :try_start_1f
    const-class v4, Landroid/content/pm/PackageManager;

    sget-object v5, Landroid/sec/multiwindow/Constants$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 101
    .local v3, src:Ljava/lang/reflect/Field;
    const-class v4, Landroid/sec/multiwindow/Constants$PackageManager;

    sget-object v5, Landroid/sec/multiwindow/Constants$PackageManager;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 102
    .local v1, dst:Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1f .. :try_end_3a} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_3a} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_3a} :catch_3e

    .line 98
    .end local v1           #dst:Ljava/lang/reflect/Field;
    .end local v3           #src:Ljava/lang/reflect/Field;
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 108
    :cond_3d
    return-void

    .line 105
    :catch_3e
    move-exception v4

    goto :goto_3a

    .line 104
    :catch_40
    move-exception v4

    goto :goto_3a

    .line 103
    :catch_42
    move-exception v4

    goto :goto_3a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
