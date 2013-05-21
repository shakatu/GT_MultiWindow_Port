.class public Landroid/sec/multiwindow/MultiWindowImpl;
.super Ljava/lang/Object;
.source "MultiWindowImpl.java"


# static fields
.field private static sArrangeField:Ljava/lang/reflect/Field;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/multiwindow/MultiWindowImpl;->sArrangeField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mContext:Landroid/content/Context;

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mMethodMap:Ljava/util/HashMap;

    .line 23
    const-string v1, "android.view.WindowManagerPolicy$WindowModeHelper"

    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/MultiWindowImpl;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, windowModeHelperClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "mode"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v6, v1, v2}, Landroid/sec/multiwindow/MultiWindowImpl;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 25
    const-string v1, "option"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v6, v1, v2}, Landroid/sec/multiwindow/MultiWindowImpl;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 35
    :goto_4
    return-object v0

    .line 33
    :catch_5
    move-exception v0

    .line 35
    const/4 v0, 0x0

    goto :goto_4
.end method

.method protected getArrange(Landroid/content/res/Configuration;)I
    .registers 5
    .parameter "config"

    .prologue
    .line 69
    :try_start_0
    sget-object v1, Landroid/sec/multiwindow/MultiWindowImpl;->sArrangeField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_10

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "arrange"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/sec/multiwindow/MultiWindowImpl;->sArrangeField:Ljava/lang/reflect/Field;

    .line 72
    :cond_10
    sget-object v1, Landroid/sec/multiwindow/MultiWindowImpl;->sArrangeField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_15} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_15} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_22

    move-result v1

    .line 80
    :goto_16
    return v1

    .line 73
    :catch_17
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 80
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :goto_1b
    const/4 v1, 0x0

    goto :goto_16

    .line 75
    :catch_1d
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1b

    .line 77
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_22
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1b
.end method

.method protected varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "name"
    .parameter "args"

    .prologue
    .line 49
    :try_start_0
    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 50
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/reflect/Method;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Method;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v2

    .line 56
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/reflect/Method;>;"
    :goto_12
    return-object v2

    .line 52
    :catch_13
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 v2, 0x0

    goto :goto_12
.end method

.method protected mode(I)I
    .registers 6
    .parameter "windowMode"

    .prologue
    .line 60
    const-string v0, "mode"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/MultiWindowImpl;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected option(I)I
    .registers 6
    .parameter "windowMode"

    .prologue
    .line 64
    const-string v0, "option"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/MultiWindowImpl;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 8
    .parameter
    .parameter "obj"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p4, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    .local v0, m:Ljava/lang/reflect/Method;
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowImpl;->mMethodMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_e} :catch_f

    .line 45
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_e
    return-void

    .line 43
    :catch_f
    move-exception v1

    goto :goto_e
.end method
