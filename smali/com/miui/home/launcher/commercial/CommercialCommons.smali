.class public Lcom/miui/home/launcher/commercial/CommercialCommons;
.super Ljava/lang/Object;
.source "CommercialCommons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;
    }
.end annotation


# static fields
.field private static sIsRecommendInfoDuplicate:Ljava8/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/BiFunction<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsRecommendInfoInvalid:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    sget-object v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$nqQ2ikFUqtlIDOsFjVRVEdiv0dQ;->INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$nqQ2ikFUqtlIDOsFjVRVEdiv0dQ;

    sput-object v0, Lcom/miui/home/launcher/commercial/CommercialCommons;->sIsRecommendInfoInvalid:Ljava8/util/function/Predicate;

    .line 102
    sget-object v0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$FU2x8NEHGjUviRQnhp5uByXbnNQ;->INSTANCE:Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$FU2x8NEHGjUviRQnhp5uByXbnNQ;

    sput-object v0, Lcom/miui/home/launcher/commercial/CommercialCommons;->sIsRecommendInfoDuplicate:Ljava8/util/function/BiFunction;

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V
    .locals 0

    .line 33
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->onLoadSuccess(Landroid/net/Uri;Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public static buildRecommendInfoList(Ljava/util/List;Ljava8/util/function/Function;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava8/util/function/Function<",
            "TT;",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$VKlZJ819Nua4uhcszaeGKZwGeF0;

    invoke-direct {v1, v0, p1}, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$VKlZJ819Nua4uhcszaeGKZwGeF0;-><init>(Ljava/util/List;Ljava8/util/function/Function;)V

    invoke-interface {p0, v1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    return-object v0
.end method

.method public static equals(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0xb

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 54
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->getMatchedPackageNames([Ljava/lang/Integer;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 59
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 60
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static filterDesktopFolderRecommendAdInfo(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 40
    new-instance v0, Lcom/miui/home/launcher/commercial/CommercialCommons$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/CommercialCommons$1;-><init>()V

    invoke-static {p0, v0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V

    :cond_0
    return-object p0
.end method

.method public static filterRequestedAdList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 76
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "CommercialCommons"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before filter data, data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/miui/home/launcher/commercial/CommercialCommons;->sIsRecommendInfoInvalid:Ljava8/util/function/Predicate;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->filterCollection(Ljava/util/Collection;Ljava8/util/function/Predicate;)V

    const-string v0, "CommercialCommons"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after filter error data, valid data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/miui/home/launcher/commercial/CommercialCommons;->sIsRecommendInfoDuplicate:Ljava8/util/function/BiFunction;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->removeDuplicates(Ljava/util/Collection;Ljava8/util/function/BiFunction;)V

    const-string v0, "CommercialCommons"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after filter duplicate data, the remaining data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterDesktopFolderRecommendAdInfo(Ljava/util/List;)Ljava/util/List;

    const-string v0, "CommercialCommons"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after filter installed apps, the final remaining data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const-string v1, "CommercialCommons"

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested ad list, i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "CommercialCommons"

    const-string v0, "don\'t filter data, requested data is empty"

    .line 77
    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getFromRecommendInfoList(Ljava/util/List;Ljava8/util/function/Function;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;",
            "Ljava8/util/function/Function<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$v4wzO2E1yf39_jkiqv9uuRwamEs;

    invoke-direct {v1, v0, p1}, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$v4wzO2E1yf39_jkiqv9uuRwamEs;-><init>(Ljava/util/List;Ljava8/util/function/Function;)V

    invoke-interface {p0, v1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    return-object v0
.end method

.method private static isRemoteShortcutInfoValidForLoadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getNetIconUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$buildRecommendInfoList$2(Ljava/util/List;Ljava8/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    .line 110
    invoke-interface {p1, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getFromRecommendInfoList$3(Ljava/util/List;Ljava8/util/function/Function;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)V
    .locals 0

    .line 120
    invoke-interface {p1, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$loadIconFromCN$5(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V
    .locals 3

    const-string v0, "CommercialCommons"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin to request image, label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getNetIconUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V

    return-void
.end method

.method static synthetic lambda$loadIconFromGlobal$4(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V
    .locals 3

    const-string v0, "CommercialCommons"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin to request image, label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getNetIconUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->loadImage(Ljava/lang/String;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getIconUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$static$1(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Ljava/lang/Boolean;
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static loadIconFromCN(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            "Ljava8/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-static {p0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->isRemoteShortcutInfoValidForLoadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/miui/home/launcher/commercial/CommercialCommons$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/CommercialCommons$4;-><init>(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V

    .line 190
    new-instance p1, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$2Co2vT9Op0uMiivfEfA5fkR7XgI;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$2Co2vT9Op0uMiivfEfA5fkR7XgI;-><init>(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static loadIconFromGlobal(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            "Ljava8/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-static {p0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->isRemoteShortcutInfoValidForLoadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/miui/home/launcher/commercial/CommercialCommons$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/CommercialCommons$3;-><init>(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V

    .line 168
    new-instance p1, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$h3TJhWj8G_AL0UCC8l0IIh45RKo;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$h3TJhWj8G_AL0UCC8l0IIh45RKo;-><init>(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static onLoadSuccess(Landroid/net/Uri;Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            "Ljava8/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/miui/home/launcher/commercial/CommercialCommons$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons$2;-><init>(Lcom/miui/home/launcher/RemoteShortcutInfo;Landroid/net/Uri;Ljava8/util/function/Consumer;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method
