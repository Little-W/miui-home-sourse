.class Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
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

    .line 81
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0083

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->background:Landroid/view/View;

    const v0, 0x7f0a00f9

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    return-void
.end method
