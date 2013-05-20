.class Lcom/android/systemui/screenshot/ScreenshotNotification$2;
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
    .line 174
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotification$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 177
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotNotification$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotification;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotNotification;->mImageFilePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/screenshot/ScreenshotNotification;->access$000(Lcom/android/systemui/screenshot/ScreenshotNotification;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 181
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotNotification$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotification;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Lcom/android/systemui/screenshot/ScreenshotNotification;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 182
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const/16 v4, 0x315

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotNotification$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotification;

    #getter for: Lcom/android/systemui/screenshot/ScreenshotNotification;->mImageFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotNotification;->access$000(Lcom/android/systemui/screenshot/ScreenshotNotification;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, uriString:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v4, "where"

    const-string v5, "myfiles"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotNotification$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotification;

    invoke-virtual {v4, v0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotNotification$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotification;

    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotNotification;->finish()V

    .line 191
    return-void
.end method
