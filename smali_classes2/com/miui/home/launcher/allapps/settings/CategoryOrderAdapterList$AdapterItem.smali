.class abstract Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;
.super Ljava/lang/Object;
.source "CategoryOrderAdapterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AdapterItem"
.end annotation


# instance fields
.field categoryInfo:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

.field categoryName:Ljava/lang/String;

.field categoryPriority:I

.field viewType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asAddCategory()Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;
    .locals 2

    .line 48
    new-instance v0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem$2;-><init>()V

    const/4 v1, 0x2

    .line 59
    iput v1, v0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->viewType:I

    return-object v0
.end method

.method static asCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;
    .locals 2

    .line 26
    new-instance v0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem$1;-><init>()V

    const/4 v1, 0x1

    .line 40
    iput v1, v0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->viewType:I

    .line 41
    iput-object p0, v0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->categoryInfo:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->categoryName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getPriority()I

    move-result p0

    iput p0, v0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->categoryPriority:I

    return-object v0
.end method


# virtual methods
.method public abstract areContentsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z
.end method

.method public abstract areItemsTheSame(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;)Z
.end method
