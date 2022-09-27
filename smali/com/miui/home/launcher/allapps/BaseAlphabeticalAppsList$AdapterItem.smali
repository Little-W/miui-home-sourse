.class public abstract Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
.super Ljava/lang/Object;
.source "BaseAlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterItem"
.end annotation


# instance fields
.field appDrawable:Landroid/graphics/drawable/Drawable;

.field appIndex:I

.field public appInfo:Lcom/miui/home/launcher/AppInfo;

.field appLabel:Ljava/lang/CharSequence;

.field categoryName:Ljava/lang/String;

.field iconHeight:I

.field isDisable:Z

.field isRecommend:Z

.field public position:I

.field rowAppIndex:I

.field rowIndex:I

.field sectionName:Ljava/lang/String;

.field viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->categoryName:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    return-void
.end method

.method static asAllAppsTitle(ILjava/lang/String;)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 154
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$3;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$3;-><init>()V

    const/16 v1, 0x8

    .line 165
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 166
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    .line 167
    iput-object p1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method static asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 107
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$1;-><init>()V

    const/4 v1, 0x2

    .line 123
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 124
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    .line 125
    iput-object p1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 126
    iput-object p2, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 127
    iput p3, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 128
    iput-boolean p4, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isRecommend:Z

    .line 129
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appLabel:Ljava/lang/CharSequence;

    .line 130
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p0

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->iconHeight:I

    .line 132
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->isDisabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isDisable:Z

    return-object v0
.end method

.method public static asEdit(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 206
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$6;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$6;-><init>()V

    const/16 v1, 0x40

    .line 217
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 218
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    .line 219
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p0

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->iconHeight:I

    return-object v0
.end method

.method public static asEmptySearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 137
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$2;-><init>()V

    const/4 v1, 0x4

    .line 148
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 149
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method

.method public static asMarketSearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 189
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$5;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$5;-><init>()V

    const/16 v1, 0x20

    .line 200
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 201
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method

.method static asRecommendDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 172
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$4;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$4;-><init>()V

    const/16 v1, 0x10

    .line 183
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 184
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method


# virtual methods
.method public abstract areContentsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z
.end method

.method public abstract areItemsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z
.end method
