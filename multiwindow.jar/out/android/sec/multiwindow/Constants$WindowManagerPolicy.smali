.class public Landroid/sec/multiwindow/Constants$WindowManagerPolicy;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowManagerPolicy"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static WINDOW_INFO_NOTHING_CHANGED:I

.field public static WINDOW_INFO_SIZE_CHANGED:I

.field public static WINDOW_MODE_FREESTYLE:I

.field public static WINDOW_MODE_MASK:I

.field public static WINDOW_MODE_NORMAL:I

.field public static WINDOW_MODE_OPTION_COMMON_FIXED_RATIO:I

.field public static WINDOW_MODE_OPTION_COMMON_FIXED_SIZE:I

.field public static WINDOW_MODE_OPTION_COMMON_HIDDEN:I

.field public static WINDOW_MODE_OPTION_COMMON_INHERIT:I

.field public static WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

.field public static WINDOW_MODE_OPTION_COMMON_NO_CONTROLBAR:I

.field public static WINDOW_MODE_OPTION_COMMON_NO_DECORATION:I

.field public static WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_NEXT:I

.field public static WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_SAME:I

.field public static WINDOW_MODE_OPTION_COMMON_PINUP:I

.field public static WINDOW_MODE_OPTION_COMMON_RESIZE:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

.field public static WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I

.field public static WINDOW_MODE_OPTION_ZONE_POLICY_DONTCARE:I

.field public static WINDOW_MODE_OPTION_ZONE_POLICY_NEXT:I

.field public static WINDOW_MODE_OPTION_ZONE_POLICY_RESERVED:I

.field public static WINDOW_MODE_OPTION_ZONE_POLICY_SAME:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 143
    const/16 v4, 0x1d

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "WINDOW_MODE_MASK"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "WINDOW_MODE_NORMAL"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "WINDOW_MODE_FREESTYLE"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "WINDOW_MODE_OPTION_COMMON_PINUP"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "WINDOW_MODE_OPTION_COMMON_INHERIT"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "WINDOW_MODE_OPTION_COMMON_RESIZE"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "WINDOW_MODE_OPTION_COMMON_MINIMIZED"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "WINDOW_MODE_OPTION_COMMON_HIDDEN"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "WINDOW_MODE_OPTION_COMMON_FIXED_SIZE"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "WINDOW_MODE_OPTION_COMMON_FIXED_RATIO"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_SAME"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_NEXT"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "WINDOW_MODE_OPTION_ZONE_POLICY_DONTCARE"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "WINDOW_MODE_OPTION_ZONE_POLICY_SAME"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "WINDOW_MODE_OPTION_ZONE_POLICY_NEXT"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "WINDOW_MODE_OPTION_ZONE_POLICY_RESERVED"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "WINDOW_INFO_NOTHING_CHANGED"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "WINDOW_INFO_SIZE_CHANGED"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "WINDOW_MODE_OPTION_COMMON_NO_DECORATION"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_MASK"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_F"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_E"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_D"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_C"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_B"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_A"

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-string v6, "WINDOW_MODE_OPTION_SPLIT_ZONE_FULL"

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-string v6, "WINDOW_MODE_OPTION_COMMON_NO_CONTROLBAR"

    aput-object v6, v4, v5

    sput-object v4, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    .line 176
    sget-object v4, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 177
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b0
    if-ge v2, v0, :cond_d0

    .line 179
    :try_start_b2
    const-class v4, Landroid/view/WindowManagerPolicy;

    sget-object v5, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 181
    .local v3, src:Ljava/lang/reflect/Field;
    const-class v4, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;

    sget-object v5, Landroid/sec/multiwindow/Constants$WindowManagerPolicy;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 182
    .local v1, dst:Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b2 .. :try_end_cd} :catch_d5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b2 .. :try_end_cd} :catch_d3
    .catch Ljava/lang/IllegalAccessException; {:try_start_b2 .. :try_end_cd} :catch_d1

    .line 177
    .end local v1           #dst:Ljava/lang/reflect/Field;
    .end local v3           #src:Ljava/lang/reflect/Field;
    :goto_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 188
    :cond_d0
    return-void

    .line 185
    :catch_d1
    move-exception v4

    goto :goto_cd

    .line 184
    :catch_d3
    move-exception v4

    goto :goto_cd

    .line 183
    :catch_d5
    move-exception v4

    goto :goto_cd
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
