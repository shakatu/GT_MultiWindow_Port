.class Lcom/android/server/sec/ClipboardLayout$7;
.super Ljava/lang/Object;
.source "ClipboardLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClipboardLayout;->setClippedDataIntoView(Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClipboardLayout;

.field final synthetic val$cbData:Landroid/sec/clipboard/data/ClipboardData;

.field final synthetic val$position:I

.field final synthetic val$tv:Landroid/widget/TextView;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$vg:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClipboardLayout;Landroid/sec/clipboard/data/ClipboardData;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iput-object p2, p0, Lcom/android/server/sec/ClipboardLayout$7;->val$cbData:Landroid/sec/clipboard/data/ClipboardData;

    iput-object p3, p0, Lcom/android/server/sec/ClipboardLayout$7;->val$tv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/server/sec/ClipboardLayout$7;->val$vg:Landroid/view/View;

    iput-object p5, p0, Lcom/android/server/sec/ClipboardLayout$7;->val$v:Landroid/view/View;

    iput p6, p0, Lcom/android/server/sec/ClipboardLayout$7;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$7;->val$cbData:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getFirstImage()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1265
    .local v7, bm:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_59

    .line 1266
    const/4 v10, 0x0

    .line 1267
    .local v10, localmHTMLImageWidth:I
    const/4 v9, 0x0

    .line 1269
    .local v9, localmHTMLImageHeight:I
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    invoke-virtual {v0}, Lcom/android/server/sec/ClipboardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v2, v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1270
    .local v2, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1271
    .local v5, bmWidth:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1273
    .local v6, bmHeight:I
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v0, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    if-gt v5, v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v0, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    if-le v6, v0, :cond_62

    .line 1274
    :cond_2f
    int-to-float v0, v5

    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v1, v1, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 1275
    .local v11, widthRate:F
    int-to-float v0, v6

    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v1, v1, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 1277
    .local v8, heightRate:F
    cmpl-float v0, v11, v8

    if-lez v0, :cond_5a

    .line 1278
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v10, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    .line 1279
    int-to-float v0, v6

    div-float/2addr v0, v11

    float-to-int v9, v0

    .line 1289
    .end local v8           #heightRate:F
    .end local v11           #widthRate:F
    :goto_4a
    move v3, v10

    .line 1290
    .local v3, localmHTMLImageWidth1:I
    move v4, v9

    .line 1291
    .local v4, localmHTMLImageHeight1:I
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v12, v0, Lcom/android/server/sec/ClipboardLayout;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sec/ClipboardLayout$7$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/sec/ClipboardLayout$7$1;-><init>(Lcom/android/server/sec/ClipboardLayout$7;Landroid/graphics/drawable/BitmapDrawable;IIII)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1312
    .end local v2           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #localmHTMLImageWidth1:I
    .end local v4           #localmHTMLImageHeight1:I
    .end local v5           #bmWidth:I
    .end local v6           #bmHeight:I
    .end local v9           #localmHTMLImageHeight:I
    .end local v10           #localmHTMLImageWidth:I
    :cond_59
    return-void

    .line 1281
    .restart local v2       #bd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #bmWidth:I
    .restart local v6       #bmHeight:I
    .restart local v8       #heightRate:F
    .restart local v9       #localmHTMLImageHeight:I
    .restart local v10       #localmHTMLImageWidth:I
    .restart local v11       #widthRate:F
    :cond_5a
    int-to-float v0, v5

    div-float/2addr v0, v8

    float-to-int v10, v0

    .line 1282
    iget-object v0, p0, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget v9, v0, Lcom/android/server/sec/ClipboardLayout;->mHTMLImageMax:I

    goto :goto_4a

    .line 1285
    .end local v8           #heightRate:F
    .end local v11           #widthRate:F
    :cond_62
    move v10, v5

    .line 1286
    move v9, v6

    goto :goto_4a
.end method
