.class public Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseWidgetsVerticalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;
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

.field final synthetic this$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Landroid/view/View;)V
    .locals 4

    .line 364
    iput-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->this$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;

    .line 365
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a02f0

    .line 366
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a02f1

    .line 367
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    .line 368
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    .line 369
    invoke-static {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->access$000(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    .line 370
    invoke-static {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->access$000(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    move-result-object v2

    invoke-static {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->access$000(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    invoke-static {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->access$000(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V

    const p1, 0x7f0a02f3

    .line 372
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mRowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 373
    iget-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mRowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 374
    iget-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mRowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
