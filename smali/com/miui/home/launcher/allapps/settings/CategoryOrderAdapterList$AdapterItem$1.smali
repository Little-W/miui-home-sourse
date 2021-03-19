.class final Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem$1;
.super Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;
.source "CategoryOrderAdapterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->asCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem$1;->categoryName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->categoryName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem$1;->categoryPriority:I

    iget p1, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->categoryPriority:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z
    .locals 2

    .line 30
    iget v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem$1;->viewType:I

    iget v1, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->viewType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem$1;->categoryInfo:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 31
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->categoryInfo:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
