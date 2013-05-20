.class Lcom/android/server/sec/ClipboardLayout$7$1;
.super Ljava/lang/Object;
.source "ClipboardLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClipboardLayout$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClipboardLayout$7;

.field final synthetic val$bd:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$bmHeight:I

.field final synthetic val$bmWidth:I

.field final synthetic val$localmHTMLImageHeight1:I

.field final synthetic val$localmHTMLImageWidth1:I


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClipboardLayout$7;Landroid/graphics/drawable/BitmapDrawable;IIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iput-object p2, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$bd:Landroid/graphics/drawable/BitmapDrawable;

    iput p3, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$localmHTMLImageWidth1:I

    iput p4, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$localmHTMLImageHeight1:I

    iput p5, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$bmWidth:I

    iput p6, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$bmHeight:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1294
    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$bd:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$localmHTMLImageWidth1:I

    iget v3, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$localmHTMLImageHeight1:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1295
    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iget-object v1, v1, Lcom/android/server/sec/ClipboardLayout$7;->val$tv:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1297
    iget v1, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$bmWidth:I

    iget v2, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$bmHeight:I

    if-le v1, v2, :cond_52

    .line 1298
    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iget-object v1, v1, Lcom/android/server/sec/ClipboardLayout$7;->val$tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1303
    :goto_23
    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iget-object v1, v1, Lcom/android/server/sec/ClipboardLayout$7;->val$vg:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x1020430

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1304
    .local v0, saveLayout:Landroid/widget/RelativeLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1307
    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iget-object v1, v1, Lcom/android/server/sec/ClipboardLayout$7;->val$vg:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iget-object v2, v2, Lcom/android/server/sec/ClipboardLayout$7;->val$v:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1308
    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iget-object v1, v1, Lcom/android/server/sec/ClipboardLayout$7;->this$0:Lcom/android/server/sec/ClipboardLayout;

    iget-object v2, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iget-object v2, v2, Lcom/android/server/sec/ClipboardLayout$7;->val$vg:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iget v3, v3, Lcom/android/server/sec/ClipboardLayout$7;->val$position:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/sec/ClipboardLayout;->showProtectedMarker(Landroid/view/View;I)V

    .line 1309
    return-void

    .line 1300
    .end local v0           #saveLayout:Landroid/widget/RelativeLayout;
    :cond_52
    iget-object v1, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->this$1:Lcom/android/server/sec/ClipboardLayout$7;

    iget-object v1, v1, Lcom/android/server/sec/ClipboardLayout$7;->val$tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/sec/ClipboardLayout$7$1;->val$bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_23
.end method
