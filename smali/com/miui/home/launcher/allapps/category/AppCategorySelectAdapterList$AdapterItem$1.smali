.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$1;
.super Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
.source "AppCategorySelectAdapterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asApp(Lcom/miui/home/launcher/AppInfo;Z)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;)Z
    .locals 2

    .line 52
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$1;->selected:Z

    iget-boolean v1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->selected:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$1;->iconHeight:I

    iget p1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->iconHeight:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;)Z
    .locals 2

    .line 46
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$1;->viewType:I

    iget v1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->viewType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$1;->app:Lcom/miui/home/launcher/AppInfo;

    .line 47
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->app:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
