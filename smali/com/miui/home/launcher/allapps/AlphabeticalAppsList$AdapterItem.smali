.class public abstract Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->categoryName:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    return-void
.end method

.method static asAllAppsTitle(ILjava/lang/String;)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 153
    new-instance v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$3;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$3;-><init>()V

    const/16 v1, 0x8

    .line 164
    iput v1, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 165
    iput p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 166
    iput-object p1, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method static asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 106
    new-instance v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$1;-><init>()V

    const/4 v1, 0x2

    .line 122
    iput v1, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 123
    iput p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 124
    iput-object p1, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 125
    iput-object p2, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 126
    iput p3, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 127
    iput-boolean p4, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->isRecommend:Z

    .line 128
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appLabel:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p0

    iput p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->iconHeight:I

    .line 131
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->isDisabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->isDisable:Z

    return-object v0
.end method

.method public static asEdit(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 205
    new-instance v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$6;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$6;-><init>()V

    const/16 v1, 0x40

    .line 216
    iput v1, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 217
    iput p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 218
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p0

    iput p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->iconHeight:I

    return-object v0
.end method

.method public static asEmptySearch(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 136
    new-instance v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$2;-><init>()V

    const/4 v1, 0x4

    .line 147
    iput v1, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 148
    iput p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method

.method public static asMarketSearch(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 188
    new-instance v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$5;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$5;-><init>()V

    const/16 v1, 0x20

    .line 199
    iput v1, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 200
    iput p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method

.method static asRecommendDivider(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .line 171
    new-instance v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$4;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$4;-><init>()V

    const/16 v1, 0x10

    .line 182
    iput v1, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 183
    iput p0, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method


# virtual methods
.method public abstract areContentsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
.end method

.method public abstract areItemsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
.end method
