.class public Lcom/miui/home/launcher/SearchBarStyleData;
.super Ljava/lang/Object;
.source "SearchBarStyleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;,
        Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;,
        Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;,
        Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/SearchBarStyleData;


# instance fields
.field private lastUpdateTime:J

.field private mExpId:Ljava/lang/String;

.field private mHasInit:Z

.field private mIsSupportBrowser:Z

.field private mIsSupportQuickSearchBox:Z

.field private mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

.field private mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleData;

    invoke-direct {v0}, Lcom/miui/home/launcher/SearchBarStyleData;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleData;->sInstance:Lcom/miui/home/launcher/SearchBarStyleData;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mHasInit:Z

    .line 48
    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    .line 50
    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportQuickSearchBox:Z

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getSearchBarDataUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->lastUpdateTime:J

    return-void
.end method

.method private formatSearchBarResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "searchBarResource://"

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/SearchBarResource/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchBarStyleData"

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchbar resource transform success,resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "SearchBarStyleData"

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchbar resource transform failed,resource not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getCloudData()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;
    .locals 6

    .line 180
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "home_search"

    const-string v3, "testData"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchBarStyleData"

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check cloud data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->getClientIdHash(Landroid/content/Context;)I

    move-result v2

    const-string v3, "SearchBarStyleData"

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device hash is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getSearchBarDataFromCloud()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setSearchBarDataFromCloud(Ljava/lang/String;)V

    .line 190
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    const-class v2, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/miui/home/launcher/SearchBarStyleData;
    .locals 1

    .line 57
    sget-object v0, Lcom/miui/home/launcher/SearchBarStyleData;->sInstance:Lcom/miui/home/launcher/SearchBarStyleData;

    return-object v0
.end method

.method private getProviderData()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;
    .locals 5

    .line 170
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getSearchBarData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchBarStyleData"

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check provider data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    const-class v2, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleExpInfo()V
    .locals 3

    .line 242
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSearchBarShowInitiate(Landroid/content/Context;)Z

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    if-eqz v1, :cond_1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getExpId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v2, "-initiate"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    const-string v0, "SearchBarStyleData"

    const-string v1, "user setting in lastest data"

    .line 249
    .line 252
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    if-eqz v0, :cond_4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    const-string v1, "."

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getExpId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    .line 255
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarAnalyTestCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private handleJumpDataFromCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;I)Z
    .locals 4

    .line 197
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->getJumpTestList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 198
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 199
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    .line 201
    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getJumpUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getTestHashStart()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getTestHashEnd()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getTestHashStart()I

    move-result v3

    if-lt p2, v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getTestHashEnd()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 203
    iget-boolean p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportQuickSearchBox:Z

    if-eqz p1, :cond_1

    .line 204
    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->access$000(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mibrowser://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p2, "mibrowser"

    invoke-static {p1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    iput-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    goto :goto_1

    .line 207
    :cond_0
    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->access$000(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "qsb://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p2, "qsb"

    invoke-static {p1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    iput-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    goto :goto_1

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->resetConfig()V

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    if-nez p1, :cond_4

    .line 219
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method private handleJumpDataFromProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)Z
    .locals 2

    .line 112
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getJump()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getJumpUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportQuickSearchBox:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->access$000(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mibrowser://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "mibrowser"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->access$000(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qsb://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "qsb"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->resetConfig()V

    const/4 p1, 0x1

    return p1

    .line 128
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    if-nez p1, :cond_4

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private handleStyleDataFromCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;I)V
    .locals 4

    .line 225
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->getUiTestList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 226
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 228
    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getTestHashStart()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getTestHashEnd()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getTestHashStart()I

    move-result v2

    if-lt p2, v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getTestHashEnd()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 229
    iput-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 230
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSearchBarEngineResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->isEngineChainChange()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->setLeftIcon(Ljava/lang/String;)V

    :cond_0
    const-string v1, "SearchBarStyleData"

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In test data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v3}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->isShowSetting()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getExpId()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, ""

    :goto_1
    invoke-static {p1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarTestCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private handleStyleDataFromProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getStyle()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 95
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSearchBarEngineResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->isEngineChainChange()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->setLeftIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getLeftIcon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getLeftIcon()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->formatSearchBarResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->setLeftIcon(Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getRightIcon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getRightIcon()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->formatSearchBarResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->setRightIcon(Ljava/lang/String;)V

    :cond_2
    const-string p1, "SearchBarStyleData"

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In test data provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->isShowSetting()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getExpId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    :goto_1
    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarTestCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 6

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 146
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    const-string v0, ""

    .line 147
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->updateDataTime()V

    .line 149
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->refreshTargetSupport()V

    .line 150
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->getProviderData()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    move-result-object v0

    .line 151
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->getCloudData()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->getUpdateTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getUpdateTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 155
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/SearchBarStyleData;->initDataForCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->initDataForProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->initDataForProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 162
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/SearchBarStyleData;->initDataForCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->resetConfig()V

    const-string v0, "SearchBarStyleData"

    const-string v1, "data both empty"

    .line 165
    :goto_0
    return-void
.end method

.method private initDataForCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;)V
    .locals 2

    .line 259
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->getClientIdHash(Landroid/content/Context;)I

    move-result v0

    .line 260
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->handleJumpDataFromCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/SearchBarStyleData;->handleStyleDataFromCloudData(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;I)V

    .line 264
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->handleExpInfo()V

    return-void
.end method

.method private initDataForProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V
    .locals 4

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->getEndTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData;->handleJumpDataFromProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 88
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData;->handleStyleDataFromProvider(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;)V

    .line 89
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->handleExpInfo()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "SearchBarStyleData"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider data not match time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->resetConfig()V

    return-void
.end method

.method public static synthetic lambda$initData$0(Lcom/miui/home/launcher/SearchBarStyleData;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->initData()V

    return-void
.end method

.method private needUpdateData()Z
    .locals 4

    .line 65
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mHasInit:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->lastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private refreshTargetSupport()V
    .locals 1

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->isSupportBrowser(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->isSupportQuickSearchBoxNew(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportQuickSearchBox:Z

    return-void
.end method

.method private resetConfig()V
    .locals 2

    .line 283
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarClickTarget(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarTestCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setSearchBarAnalyTestCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 321
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070326

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 322
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->access$100(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    .line 323
    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v4, v8

    new-array v6, v5, [I

    const v7, 0x101009c

    aput v7, v6, v8

    aput-object v6, v4, v5

    new-array v6, v5, [I

    const v7, 0x10102fe

    aput v7, v6, v8

    const/4 v7, 0x2

    aput-object v6, v4, v7

    new-array v6, v8, [I

    const/4 v9, 0x3

    aput-object v6, v4, v9

    .line 324
    new-array v3, v3, [I

    aput v2, v3, v8

    aput v2, v3, v5

    aput v2, v3, v7

    aput v2, v3, v9

    .line 325
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 326
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 327
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 328
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getBackgroundBorderColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->access$200(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getBackgroundBorderColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 332
    :cond_1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, v5, v3, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getBlurRadius()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getBlurLayerColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v2, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    .line 352
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getClickTargetUri()Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mTarget:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->getJumpUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getExpId()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mExpId:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 361
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getLeftIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 363
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRightIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 370
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mStyle:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->getRightIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 372
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public initData(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mHasInit:Z

    if-eqz p1, :cond_0

    .line 291
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleData$PsN3IIhmeu74gwNyyXndM_gNQB8;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarStyleData$PsN3IIhmeu74gwNyyXndM_gNQB8;-><init>(Lcom/miui/home/launcher/SearchBarStyleData;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->initData()V

    :goto_0
    return-void
.end method

.method public initDataIfNeeded()Z
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarStyleData;->needUpdateData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/SearchBarStyleData;->initData(Z)V

    :cond_0
    return v0
.end method

.method public isSupportBrowser()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->mIsSupportBrowser:Z

    return v0
.end method

.method public isUserBlur()Z
    .locals 1

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public updateDataTime()V
    .locals 3

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData;->lastUpdateTime:J

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/home/launcher/SearchBarStyleData;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setSearchBarDataUpdateTime(J)V

    return-void
.end method
