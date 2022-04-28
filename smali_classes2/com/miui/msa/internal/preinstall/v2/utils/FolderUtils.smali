.class public Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;
.super Ljava/lang/Object;
.source "FolderUtils.java"


# static fields
.field private static mSPHot:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

.field private static mSPRecommend:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    const-string v1, "pre_install_recommend"

    invoke-direct {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->mSPRecommend:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    .line 12
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    const-string v1, "pre_install_hot"

    invoke-direct {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->mSPHot:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDeleteCount(Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getSP(Ljava/lang/String;)Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    move-result-object p0

    const-string v0, "key_delete_count"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_delete_count"

    add-int/lit8 v0, v0, 0x1

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static addDeletePackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 15
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getSP(Ljava/lang/String;)Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    move-result-object p0

    const-string v0, "key_delete_package"

    .line 16
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p1, "key_delete_package"

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public static addInstallCount(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getSP(Ljava/lang/String;)Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    move-result-object p0

    const-string v0, "key_install_count"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_install_count"

    add-int/lit8 v0, v0, 0x1

    .line 45
    invoke-virtual {p0, v1, v0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static getDeleteCount(Ljava/lang/String;)I
    .locals 2

    .line 39
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getSP(Ljava/lang/String;)Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    move-result-object p0

    const-string v0, "key_delete_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDeletePackages(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getSP(Ljava/lang/String;)Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    move-result-object p0

    const-string v0, "key_delete_package"

    .line 25
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    if-eqz p0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInitCount(Ljava/lang/String;)I
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getSP(Ljava/lang/String;)Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    move-result-object p0

    const-string v0, "key_init_count"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInstallCount(Ljava/lang/String;)I
    .locals 2

    .line 49
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getSP(Ljava/lang/String;)Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    move-result-object p0

    const-string v0, "key_install_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getSP(Ljava/lang/String;)Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;
    .locals 1

    const-string v0, "1.32.5.1"

    .line 61
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 62
    sget-object p0, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->mSPRecommend:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    return-object p0

    .line 64
    :cond_0
    sget-object p0, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->mSPHot:Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    return-object p0
.end method

.method public static putInitCount(Ljava/lang/String;I)V
    .locals 1

    .line 57
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getSP(Ljava/lang/String;)Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;

    move-result-object p0

    const-string v0, "key_init_count"

    invoke-virtual {p0, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->putInt(Ljava/lang/String;I)V

    return-void
.end method
