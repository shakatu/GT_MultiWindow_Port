.class public Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;
.super Ljava/lang/Object;
.source "MultiWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabletStatusBar"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static MSG_CLOSE_MINI_MODE_APPS_PANEL:I

.field public static MSG_OPEN_MINI_MODE_APPS_PANEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 163
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "MSG_OPEN_MINI_MODE_APPS_PANEL"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "MSG_CLOSE_MINI_MODE_APPS_PANEL"

    aput-object v7, v5, v6

    sput-object v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->FIELD_NAMES:[Ljava/lang/String;

    .line 169
    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v5

    .line 170
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 172
    :try_start_0
    const-string v5, "com.android.systemui.statusbar.tablet.TabletStatusBar"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 173
    .local v4, tabletStatusBarClass:Ljava/lang/Class;
    sget-object v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 174
    .local v3, src:Ljava/lang/reflect/Field;
    const-class v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 175
    .local v1, dst:Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #dst:Ljava/lang/reflect/Field;
    .end local v3           #src:Ljava/lang/reflect/Field;
    .end local v4           #tabletStatusBarClass:Ljava/lang/Class;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void

    .line 179
    :catch_0
    move-exception v5

    goto :goto_1

    .line 178
    :catch_1
    move-exception v5

    goto :goto_1

    .line 177
    :catch_2
    move-exception v5

    goto :goto_1

    .line 176
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
