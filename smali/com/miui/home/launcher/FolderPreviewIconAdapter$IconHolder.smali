.class Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FolderPreviewIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderPreviewIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconHolder"
.end annotation


# instance fields
.field v:Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 150
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0106

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;

    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$IconHolder;->v:Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconView;

    return-void
.end method
