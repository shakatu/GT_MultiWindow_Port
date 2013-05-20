.class Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$2;
.super Ljava/lang/Object;
.source "PenDetachmentAlertDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 75
    if-eqz p2, :cond_c

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->access$002(Z)Z

    .line 80
    :goto_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$2;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->playPressSound()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->access$200(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V

    .line 81
    return-void

    .line 78
    :cond_c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->access$002(Z)Z

    goto :goto_6
.end method
