.class abstract Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
.super Ljava/lang/Object;
.source "AppCategorySelectAdapterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AdapterItem"
.end annotation


# instance fields
.field app:Lcom/miui/home/launcher/AppInfo;

.field iconHeight:I

.field section:Ljava/lang/String;

.field selected:Z

.field viewType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asApp(Lcom/miui/home/launcher/AppInfo;Z)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
    .locals 2

    .line 44
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$1;-><init>()V

    const/4 v1, 0x1

    .line 56
    iput v1, v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->viewType:I

    .line 57
    iput-object p0, v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->app:Lcom/miui/home/launcher/AppInfo;

    .line 58
    iput-boolean p1, v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->selected:Z

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p0

    iput p0, v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->iconHeight:I

    return-object v0
.end method

.method static asEmptySearch()Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
    .locals 2

    .line 81
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$3;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$3;-><init>()V

    const/4 v1, 0x3

    .line 92
    iput v1, v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->viewType:I

    return-object v0
.end method

.method static asSection(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
    .locals 2

    .line 64
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem$2;-><init>()V

    const/4 v1, 0x2

    .line 75
    iput v1, v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->viewType:I

    .line 76
    iput-object p0, v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->section:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract areContentsTheSame(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;)Z
.end method

.method public abstract areItemsTheSame(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;)Z
.end method
