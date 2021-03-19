.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;
.super Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;
.source "AppCategorySelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconViewHolder"
.end annotation


# instance fields
.field checkBox:Lcom/miui/home/launcher/view/EditCheckBox;

.field icon:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 185
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00e9

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00ec

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0a00b1

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/view/EditCheckBox;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->checkBox:Lcom/miui/home/launcher/view/EditCheckBox;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->checkBox:Lcom/miui/home/launcher/view/EditCheckBox;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/EditCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(ZZ)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->checkBox:Lcom/miui/home/launcher/view/EditCheckBox;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/view/EditCheckBox;->setChecked(ZZ)V

    .line 197
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f1000c4

    goto :goto_0

    :cond_0
    const p1, 0x7f1000c5

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->title:Landroid/widget/TextView;

    .line 199
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 197
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
