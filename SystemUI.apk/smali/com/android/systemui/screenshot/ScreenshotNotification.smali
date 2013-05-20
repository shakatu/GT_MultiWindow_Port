.class public Lcom/android/systemui/screenshot/ScreenshotNotification;
.super Landroid/app/Activity;
.source "ScreenshotNotification.java"


# static fields
.field private static final PAPER_ARTIST_CLASS_NAME:Ljava/lang/String; = "com.dama.paperartist.PaperArtistActivity"

.field private static final PAPER_ARTIST_PACKAGE_NAME:Ljava/lang/String; = "com.dama.paperartist"

.field private static final SAVED_FILE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final SCREENCAPTURE_NAME:Ljava/lang/String; = ".screenshotEdits"

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final TAG:Ljava/lang/String; = "ScreenshotDelete"


# instance fields
.field private mImageDirPath:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotNotification;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotification;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public launchEditApp()V
    .locals 13

    .prologue
    .line 96
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/systemui/screenshot/ScreenshotNotification;->mImageDirPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".screenshotEdits"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, outFileName:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenshotNotification;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 101
    .local v6, fis:Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 103
    .local v7, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 104
    .local v1, data:I
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 105
    .local v0, buffer:[B
    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v6, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_0

    .line 106
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0           #buffer:[B
    .end local v1           #data:I
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 111
    .local v2, e:Ljava/io/IOException;
    const-string v10, "ScreenshotDelete"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail : file operation error// File in : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/screenshot/ScreenshotNotification;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "File out : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->finish()V

    .line 145
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 108
    .restart local v0       #buffer:[B
    .restart local v1       #data:I
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 109
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v4, editIntent:Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, editFile:Ljava/io/File;
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 130
    .local v5, fileUri:Landroid/net/Uri;
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.dama.paperartist"

    const-string v12, "com.dama.paperartist.PaperArtistActivity"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v10, "image/png"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    const/high16 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    const v10, 0x8000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v4}, Lcom/android/systemui/screenshot/ScreenshotNotification;->startActivity(Landroid/content/Intent;)V

    .line 140
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Lcom/android/systemui/screenshot/ScreenshotNotification;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 141
    .local v8, notificationManager:Landroid/app/NotificationManager;
    const/16 v10, 0x315

    invoke-virtual {v8, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x4

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotNotification;->requestWindowFeature(I)Z

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FilePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotification;->mImageFilePath:Ljava/lang/String;

    .line 75
    const-string v1, "DirPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotification;->mImageDirPath:Ljava/lang/String;

    .line 76
    const-string v1, "ScreenshotDelete"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenshotNotification : onCreate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotification;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->launchEditApp()V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v1, "android.intent.action.DELETE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotNotification;->showDialog(I)V

    goto :goto_0

    .line 86
    :cond_1
    const-string v1, "ScreenshotDelete"

    const-string v2, "Fail : Invaild intent action"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 169
    .local v1, r:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 202
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x1030318

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x10404b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0035

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotNotification$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/ScreenshotNotification$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotification;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotNotification$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/ScreenshotNotification$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotification;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 199
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotNotification;->finish()V

    .line 93
    return-void
.end method
