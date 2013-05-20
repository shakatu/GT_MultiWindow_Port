.class Lcom/android/systemui/screenshot/ScreenshotNotification$1;
.super Ljava/lang/Object;
.source "ScreenshotNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotNotification;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotification$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotification$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotification;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->finish()V

    .line 196
    return-void
.end method
