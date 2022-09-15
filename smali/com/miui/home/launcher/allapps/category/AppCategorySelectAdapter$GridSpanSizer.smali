.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "AppCategorySelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpanSizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->viewType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)I

    move-result p1

    return p1
.end method
