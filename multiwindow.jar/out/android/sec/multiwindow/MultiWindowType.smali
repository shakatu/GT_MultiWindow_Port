.class public final enum Landroid/sec/multiwindow/MultiWindowType;
.super Ljava/lang/Enum;
.source "MultiWindowType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/sec/multiwindow/MultiWindowType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/sec/multiwindow/MultiWindowType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/sec/multiwindow/MultiWindowType;

    sput-object v0, Landroid/sec/multiwindow/MultiWindowType;->$VALUES:[Landroid/sec/multiwindow/MultiWindowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/sec/multiwindow/MultiWindowType;
    .registers 2
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Landroid/sec/multiwindow/MultiWindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/MultiWindowType;

    return-object v0
.end method

.method public static values()[Landroid/sec/multiwindow/MultiWindowType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Landroid/sec/multiwindow/MultiWindowType;->$VALUES:[Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v0}, [Landroid/sec/multiwindow/MultiWindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sec/multiwindow/MultiWindowType;

    return-object v0
.end method
