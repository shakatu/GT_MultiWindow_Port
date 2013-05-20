.class Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;
.super Ljava/lang/Object;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EasyModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerOnItemSelectedListener"
.end annotation


# instance fields
.field mPosition:I

.field final synthetic this$0:Lcom/android/settings/EasyModeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/EasyModeSettings;Landroid/app/Fragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter "fragment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p3, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 334
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "row"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->mPosition:I

    .line 339
    const-string v0, "EasyModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget v0, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->mPosition:I

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/EasyModeSettings;->access$000(Lcom/android/settings/EasyModeSettings;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090cf1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/EasyModeSettings;->access$100(Lcom/android/settings/EasyModeSettings;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->this$0:Lcom/android/settings/EasyModeSettings;

    iget v1, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->mPosition:I

    #setter for: Lcom/android/settings/EasyModeSettings;->mModeState:I
    invoke-static {v0, v1}, Lcom/android/settings/EasyModeSettings;->access$202(Lcom/android/settings/EasyModeSettings;I)I

    .line 362
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/EasyModeSettings;->access$000(Lcom/android/settings/EasyModeSettings;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090cf4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/EasyModeSettings;->access$100(Lcom/android/settings/EasyModeSettings;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
