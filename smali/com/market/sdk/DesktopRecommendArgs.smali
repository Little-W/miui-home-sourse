.class public Lcom/market/sdk/DesktopRecommendArgs;
.super Ljava/lang/Object;


# static fields
.field private static final KEY_EXTRA_PARAMS:Ljava/lang/String; = "key_extra_params"

.field private static final KEY_FOLDER_ID:Ljava/lang/String; = "key_folder_id"

.field private static final KEY_FOLDER_NAME:Ljava/lang/String; = "key_folder_name"

.field private static final KEY_PKG_LIST:Ljava/lang/String; = "key_pkg_list"


# instance fields
.field private final extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final folderId:J

.field private final folderName:Ljava/lang/String;

.field private final installedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/market/sdk/DesktopRecommendArgs;->folderId:J

    iput-object p3, p0, Lcom/market/sdk/DesktopRecommendArgs;->folderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/market/sdk/DesktopRecommendArgs;->installedPackages:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/market/sdk/DesktopRecommendArgs;->extraParams:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_folder_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market/sdk/DesktopRecommendArgs;->folderId:J

    const-string v0, "key_folder_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendArgs;->folderName:Ljava/lang/String;

    const-string v0, "key_pkg_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendArgs;->installedPackages:Ljava/util/ArrayList;

    const-string v0, "key_extra_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/market/sdk/DesktopRecommendArgs;->convertToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/DesktopRecommendArgs;->extraParams:Ljava/util/Map;

    return-void
.end method

.method private static convertToJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getExtraParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/market/sdk/DesktopRecommendArgs;->extraParams:Ljava/util/Map;

    return-object p0
.end method

.method public getFolderId()J
    .locals 2

    iget-wide v0, p0, Lcom/market/sdk/DesktopRecommendArgs;->folderId:J

    return-wide v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/DesktopRecommendArgs;->folderName:Ljava/lang/String;

    return-object p0
.end method

.method public getInstalledPackages()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/market/sdk/DesktopRecommendArgs;->installedPackages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public parcel()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    iget-wide v1, p0, Lcom/market/sdk/DesktopRecommendArgs;->folderId:J

    const-string v3, "key_folder_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/market/sdk/DesktopRecommendArgs;->folderName:Ljava/lang/String;

    const-string v2, "key_folder_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/market/sdk/DesktopRecommendArgs;->installedPackages:Ljava/util/ArrayList;

    const-string v2, "key_pkg_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/market/sdk/DesktopRecommendArgs;->extraParams:Ljava/util/Map;

    invoke-static {p0}, Lcom/market/sdk/DesktopRecommendArgs;->convertToJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_extra_params"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
