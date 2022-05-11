.class Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;
.super Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchMarketViewHolder"
.end annotation


# instance fields
.field arrow:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

.field icon:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    .line 420
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0184

    .line 421
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0a0231

    .line 422
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->text:Landroid/widget/TextView;

    const p1, 0x7f0a0069

    .line 423
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->arrow:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    return-void
.end method
