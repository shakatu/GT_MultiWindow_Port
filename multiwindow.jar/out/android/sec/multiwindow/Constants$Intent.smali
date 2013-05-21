.class public Landroid/sec/multiwindow/Constants$Intent;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intent"
.end annotation


# static fields
.field public static ACTION_ARRANGE_WINDOWS:Ljava/lang/String;

.field public static CATEGORY_MULTIWINDOW_LAUNCHER:Ljava/lang/String;

.field public static EXTRA_ARRANGE_MODE:Ljava/lang/String;

.field public static EXTRA_WINDOW_ARRANGED_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_DEFAULT_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_LAST_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_MINIMIZED_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_MINIMIZED_SLOT:Ljava/lang/String;

.field public static EXTRA_WINDOW_MINIMUM_SIZE:Ljava/lang/String;

.field public static EXTRA_WINDOW_MODE:Ljava/lang/String;

.field public static EXTRA_WINDOW_OUT_OF_ARRANGE:Ljava/lang/String;

.field public static EXTRA_WINDOW_POSITION:Ljava/lang/String;

.field static FIELD_NAMES:[Ljava/lang/String;

.field public static METADATA_MULTIWINDOW_DEF_HEIGHT:Ljava/lang/String;

.field public static METADATA_MULTIWINDOW_DEF_WIDTH:Ljava/lang/String;

.field public static METADATA_MULTIWINDOW_MIN_HEIGHT:Ljava/lang/String;

.field public static METADATA_MULTIWINDOW_MIN_WIDTH:Ljava/lang/String;

.field public static METADATA_MULTIWINDOW_STYLE:Ljava/lang/String;

.field public static METADATA_SUPPORT_MULTIWINDOW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 47
    const/16 v4, 0x12

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EXTRA_WINDOW_MODE"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "EXTRA_WINDOW_POSITION"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "EXTRA_WINDOW_MINIMUM_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "EXTRA_WINDOW_MINIMIZED_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "EXTRA_WINDOW_MINIMIZED_SLOT"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "EXTRA_WINDOW_DEFAULT_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "EXTRA_WINDOW_LAST_SIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "EXTRA_WINDOW_ARRANGED_SIZE"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "EXTRA_WINDOW_OUT_OF_ARRANGE"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "CATEGORY_MULTIWINDOW_LAUNCHER"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "METADATA_SUPPORT_MULTIWINDOW"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "METADATA_MULTIWINDOW_STYLE"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "METADATA_MULTIWINDOW_MIN_WIDTH"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "METADATA_MULTIWINDOW_MIN_HEIGHT"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "METADATA_MULTIWINDOW_DEF_WIDTH"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "METADATA_MULTIWINDOW_DEF_HEIGHT"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "ACTION_ARRANGE_WINDOWS"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "EXTRA_ARRANGE_MODE"

    aput-object v6, v4, v5

    sput-object v4, Landroid/sec/multiwindow/Constants$Intent;->FIELD_NAMES:[Ljava/lang/String;

    .line 69
    sget-object v4, Landroid/sec/multiwindow/Constants$Intent;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 70
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6e
    if-ge v2, v0, :cond_8e

    .line 72
    :try_start_70
    const-class v4, Landroid/content/Intent;

    sget-object v5, Landroid/sec/multiwindow/Constants$Intent;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 73
    .local v3, src:Ljava/lang/reflect/Field;
    const-class v4, Landroid/sec/multiwindow/Constants$Intent;

    sget-object v5, Landroid/sec/multiwindow/Constants$Intent;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    .local v1, dst:Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_70 .. :try_end_8b} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_8b} :catch_91
    .catch Ljava/lang/IllegalAccessException; {:try_start_70 .. :try_end_8b} :catch_8f

    .line 70
    .end local v1           #dst:Ljava/lang/reflect/Field;
    .end local v3           #src:Ljava/lang/reflect/Field;
    :goto_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 80
    :cond_8e
    return-void

    .line 77
    :catch_8f
    move-exception v4

    goto :goto_8b

    .line 76
    :catch_91
    move-exception v4

    goto :goto_8b

    .line 75
    :catch_93
    move-exception v4

    goto :goto_8b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
