.class public Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WidgetsVerticalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mRowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSmallIcon:Landroid/widget/ImageView;

.field public mTitle:Landroid/widget/TextView;

.field public mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

.field final synthetic this$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Landroid/view/View;)V
    .locals 3

    .line 318
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->this$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    .line 319
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01ff

    .line 320
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0200

    .line 321
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    .line 322
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    .line 323
    invoke-static {p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->access$000(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    .line 324
    invoke-static {p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->access$000(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    move-result-object v2

    invoke-static {p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->access$000(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    const p1, 0x7f0a0201

    .line 325
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mRowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 326
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mRowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 327
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mRowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
