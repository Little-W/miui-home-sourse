.class Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;
.super Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;
.source "CategoryOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field drag:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 120
    invoke-direct {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 121
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 122
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a01cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 123
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->drag:Landroid/view/View;

    return-void
.end method
