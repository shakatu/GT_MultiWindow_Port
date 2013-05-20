.class Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
.super Ljava/lang/Object;
.source "SAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sapps/SAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentDescription"
.end annotation


# instance fields
.field private ci:Landroid/content/pm/ComponentInfo;

.field private focus:Z

.field private iconInfo:Lcom/android/systemui/sapps/SAppsPanel$IconInfo;

.field private label:Ljava/lang/String;

.field private mIconView:Landroid/view/View;

.field private mIsChosen:Z

.field private name:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sapps/SAppsPanel;Landroid/content/pm/ComponentInfo;)V
    .locals 3
    .parameter
    .parameter "componentInfo"

    .prologue
    const/4 v1, 0x0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->this$0:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean v1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->focus:Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    .line 162
    iput-boolean v1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->mIsChosen:Z

    .line 165
    iput-object p2, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    .line 166
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;-><init>(Lcom/android/systemui/sapps/SAppsPanel;Landroid/content/pm/ComponentInfo;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->iconInfo:Lcom/android/systemui/sapps/SAppsPanel$IconInfo;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    #getter for: Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/systemui/sapps/SAppsPanel;->access$000(Lcom/android/systemui/sapps/SAppsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    .line 168
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;

    .line 169
    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    return-object v0
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isChosen()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->mIsChosen:Z

    return v0
.end method

.method public setChosen(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->mIsChosen:Z

    .line 193
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "focused"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->focus:Z

    .line 173
    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentDescription{label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIconInfo()V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->this$0:Lcom/android/systemui/sapps/SAppsPanel;

    iget-object v2, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;-><init>(Lcom/android/systemui/sapps/SAppsPanel;Landroid/content/pm/ComponentInfo;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->iconInfo:Lcom/android/systemui/sapps/SAppsPanel$IconInfo;

    .line 205
    return-void
.end method

.method public updateLabel()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->this$0:Lcom/android/systemui/sapps/SAppsPanel;

    #getter for: Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/systemui/sapps/SAppsPanel;->access$000(Lcom/android/systemui/sapps/SAppsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public updateResources(Z)V
    .locals 5
    .parameter "isPortrait"

    .prologue
    .line 208
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    const v4, 0x7f0d002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    .local v0, appIcon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->iconInfo:Lcom/android/systemui/sapps/SAppsPanel$IconInfo;

    iget-boolean v4, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->focus:Z

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/sapps/SAppsPanel$IconInfo;->getIcon(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 214
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->mIconView:Landroid/view/View;

    const v4, 0x7f0d002f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 217
    .local v1, appLabel:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
