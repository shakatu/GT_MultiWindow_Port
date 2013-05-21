.class public abstract Landroid/sec/multiwindow/MWOnDragListener;
.super Ljava/lang/Object;
.source "MWOnDragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "MWOnDragListener"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 47
    const-string v0, "MWOnDragListener"

    const-string v1, "Unknown action type received by OnDragListener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    :goto_10
    :pswitch_10
    return v0

    .line 40
    :pswitch_11
    invoke-virtual {p0, p2}, Landroid/sec/multiwindow/MWOnDragListener;->onDrop(Landroid/view/DragEvent;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_10

    .line 44
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_10

    .line 30
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_18
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public abstract onDrop(Landroid/view/DragEvent;)V
.end method
