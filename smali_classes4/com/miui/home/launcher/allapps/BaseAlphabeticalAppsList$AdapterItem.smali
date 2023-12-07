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

.field public appIndex:I

.field public appInfo:Lcom/miui/home/launcher/AppInfo;

.field appLabel:Ljava/lang/CharSequence;

.field categoryName:Ljava/lang/String;

.field public data:Ljava/lang/Object;

.field public dividerHeight:I

.field iconHeight:I

.field isDisable:Z

.field isRecommend:Z

.field public isSearchContent:Z

.field public position:I

.field public resultGroup:I

.field rowAppIndex:I

.field rowIndex:I

.field public sectionName:Ljava/lang/String;

.field public str:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->categoryName:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    return-void
.end method

.method static asAllAppsTitle(ILjava/lang/String;)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 186
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$3;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$3;-><init>()V

    const/16 v1, 0x8

    .line 197
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 198
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    .line 199
    iput-object p1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->categoryName:Ljava/lang/String;

    const/4 p0, 0x1

    .line 200
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    return-object v0
.end method

.method static asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 137
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$1;-><init>()V

    const/4 v1, 0x2

    .line 153
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 154
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    .line 155
    iput-object p1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 156
    iput-object p2, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 157
    iput p3, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 158
    iput-boolean p4, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isRecommend:Z

    .line 159
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appLabel:Ljava/lang/CharSequence;

    .line 160
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appDrawable:Landroid/graphics/drawable/Drawable;

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p0

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->iconHeight:I

    .line 162
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->isDisabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isDisable:Z

    const/4 p0, 0x1

    .line 163
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    return-object v0
.end method

.method public static asEdit(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 239
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$6;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$6;-><init>()V

    const/16 v1, 0x40

    .line 250
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 251
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    .line 252
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p0

    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->iconHeight:I

    return-object v0
.end method

.method public static asEmptySearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 168
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$2;-><init>()V

    const/4 v1, 0x4

    .line 179
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 180
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    const/4 p0, 0x5

    .line 181
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->resultGroup:I

    return-object v0
.end method

.method public static asMarketSearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 222
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$5;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$5;-><init>()V

    const/16 v1, 0x20

    .line 233
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 234
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method

.method static asRecommendDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 205
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$4;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem$4;-><init>()V

    const/16 v1, 0x10

    .line 216
    iput v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    .line 217
    iput p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method


# virtual methods
.method public abstract areContentsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z
.end method

.method public abstract areItemsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z
.end method
