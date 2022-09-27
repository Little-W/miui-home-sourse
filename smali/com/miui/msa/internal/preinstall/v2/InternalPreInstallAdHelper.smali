.class public Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;
.super Ljava/lang/Object;
.source "InternalPreInstallAdHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "v2.InternalPreInstallAdHelper"

.field private static volatile sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 26
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;
    .locals 2

    .line 31
    sget-object v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    invoke-direct {v1, p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 38
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    return-object p0
.end method


# virtual methods
.method public getCNColudControl()Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
    .locals 2

    const-string v0, "v2.InternalPreInstallAdHelper"

    const-string v1, "getCNColudControl"

    .line 115
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->isNewPreinstallVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->getCNColudControl()Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getCNColudControl()Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/ConvertUtils;->convertCnCloudControlInfoFromV1ToV2(Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;)Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    move-result-object v0

    return-object v0
.end method

.method public handleClick(Ljava/util/List;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;IJ)V"
        }
    .end annotation

    const-string v0, "v2.InternalPreInstallAdHelper"

    const-string v1, "handleClick"

    .line 94
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->isNewPreinstallVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->handleClick(Ljava/util/List;IJ)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    .line 100
    invoke-static {p1}, Lcom/miui/msa/internal/preinstall/v2/utils/ConvertUtils;->convertRecListFromV2ToV1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleClick(Ljava/util/List;IJ)V

    :goto_0
    return-void
.end method

.method public handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .locals 2

    const-string v0, "v2.InternalPreInstallAdHelper"

    const-string v1, "handleDislike"

    .line 105
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->isNewPreinstallVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    .line 110
    invoke-static {p1}, Lcom/miui/msa/internal/preinstall/v2/utils/ConvertUtils;->convertRecInfoFromV2ToV1(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleDislike(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    :goto_0
    return-void
.end method

.method public handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .locals 2

    const-string v0, "v2.InternalPreInstallAdHelper"

    const-string v1, "handleView"

    .line 84
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->isNewPreinstallVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    .line 89
    invoke-static {p1}, Lcom/miui/msa/internal/preinstall/v2/utils/ConvertUtils;->convertRecInfoFromV2ToV1(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleView(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    :goto_0
    return-void
.end method

.method public loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/internal/preinstall/v2/FolderInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "v2.InternalPreInstallAdHelper"

    const-string v1, "loadDesktopRecommendAdInfo"

    .line 42
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->isNewPreinstallVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lcom/miui/msa/internal/preinstall/v2/utils/ConvertUtils;->convertFolderInfoFromV2ToV1(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v1/FolderInfo;)Ljava/util/List;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/miui/msa/internal/preinstall/v2/utils/ConvertUtils;->convertRecListFromV1ToV2(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v2/ImageCallback;)V
    .locals 2

    const-string v0, "v2.InternalPreInstallAdHelper"

    const-string v1, "loadImage"

    .line 59
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->isNewPreinstallVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v2/ImageCallback;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper$1;-><init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;Lcom/miui/msa/internal/preinstall/v2/ImageCallback;)V

    .line 65
    invoke-virtual {v0, p1, v1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V

    :goto_0
    return-void
.end method
