.class Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "IconCustomizePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/IconCustomizePreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private icon:Lcom/miui/home/launcher/LauncherIconImageView;

.field final synthetic this$0:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/IconCustomizePreviewAdapter;Landroid/view/View;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->this$0:Lcom/miui/home/settings/IconCustomizePreviewAdapter;

    .line 71
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00e9

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->icon:Lcom/miui/home/launcher/LauncherIconImageView;

    const p1, 0x7f0a00ec

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Lcom/miui/home/launcher/LauncherIconImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->icon:Lcom/miui/home/launcher/LauncherIconImageView;

    return-object p0
.end method
