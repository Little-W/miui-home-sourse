.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$2;
.super Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
.source "AppCategorySelectAdapterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asSection(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;)Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$2;->section:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->section:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;)Z
    .locals 0

    .line 67
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$2;->viewType:I

    iget p1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->viewType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
