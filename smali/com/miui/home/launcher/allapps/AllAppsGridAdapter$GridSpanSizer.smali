.class public Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpanSizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    .line 99
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->setSpanIndexCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->access$000(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)I

    move-result p0

    return p0
.end method
