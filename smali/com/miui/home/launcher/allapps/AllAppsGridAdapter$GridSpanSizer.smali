.class public Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;
.super Landroid/mysupport/v7/widget/GridLayoutManager$SpanSizeLookup;
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

    .line 96
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    .line 97
    invoke-direct {p0}, Landroid/mysupport/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->setSpanIndexCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->access$000(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)I

    move-result p1

    return p1
.end method
