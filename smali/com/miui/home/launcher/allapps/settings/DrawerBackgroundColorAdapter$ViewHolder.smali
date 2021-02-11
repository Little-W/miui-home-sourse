.class Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;
.super Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;
.source "DrawerBackgroundColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field background:Landroid/view/View;

.field desc:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a005b

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->background:Landroid/view/View;

    const v0, 0x7f0a008e

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    return-void
.end method
