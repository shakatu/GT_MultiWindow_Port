.class public Landroid/sec/multiwindow/Constants$Configuration;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# static fields
.field public static ARRANGE_CASCADE:I

.field public static ARRANGE_MINIMIZED_ALL:I

.field public static ARRANGE_RESTORED_ALL:I

.field public static ARRANGE_SPLITED:I

.field public static ARRANGE_TILED:I

.field public static ARRANGE_TOGGLE_MASK:I

.field public static ARRANGE_UNDEFINED:I

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 200
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ARRANGE_UNDEFINED"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ARRANGE_TILED"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "ARRANGE_CASCADE"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ARRANGE_SPLITED"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "ARRANGE_MINIMIZED_ALL"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "ARRANGE_RESTORED_ALL"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "ARRANGE_TOGGLE_MASK"

    aput-object v6, v4, v5

    sput-object v4, Landroid/sec/multiwindow/Constants$Configuration;->FIELD_NAMES:[Ljava/lang/String;

    .line 211
    sget-object v4, Landroid/sec/multiwindow/Constants$Configuration;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 212
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2c
    if-ge v2, v0, :cond_4c

    .line 214
    :try_start_2e
    const-class v4, Landroid/content/res/Configuration;

    sget-object v5, Landroid/sec/multiwindow/Constants$Configuration;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 216
    .local v3, src:Ljava/lang/reflect/Field;
    const-class v4, Landroid/sec/multiwindow/Constants$Configuration;

    sget-object v5, Landroid/sec/multiwindow/Constants$Configuration;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 217
    .local v1, dst:Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_49
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2e .. :try_end_49} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_49} :catch_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_49} :catch_4d

    .line 212
    .end local v1           #dst:Ljava/lang/reflect/Field;
    .end local v3           #src:Ljava/lang/reflect/Field;
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 223
    :cond_4c
    return-void

    .line 220
    :catch_4d
    move-exception v4

    goto :goto_49

    .line 219
    :catch_4f
    move-exception v4

    goto :goto_49

    .line 218
    :catch_51
    move-exception v4

    goto :goto_49
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
