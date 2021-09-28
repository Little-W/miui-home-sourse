.class public Lcom/miui/home/recents/ThumbnailBlurManager;
.super Ljava/lang/Object;
.source "ThumbnailBlurManager.java"


# static fields
.field private static final RECENTS_PRIVACY_THUMBNAIL_BLUR_KEY:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mThumbnailBlurObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    const-class v0, Landroid/provider/MiuiSettings$System;

    const-string v1, "MIUI_RECENTS_PRIVACY_THUMBNAIL_BLUR"

    const-class v2, Ljava/lang/String;

    .line 28
    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/miui/home/recents/ThumbnailBlurManager;->RECENTS_PRIVACY_THUMBNAIL_BLUR_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance p1, Lcom/miui/home/recents/-$$Lambda$ThumbnailBlurManager$C7S54kgPUlHoYcwMxHYypmAdtig;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/-$$Lambda$ThumbnailBlurManager$C7S54kgPUlHoYcwMxHYypmAdtig;-><init>(Lcom/miui/home/recents/ThumbnailBlurManager;)V

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$ThumbnailBlurManager$Qrs-FXNCLxdxph81t04-d1sTblM;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$ThumbnailBlurManager$Qrs-FXNCLxdxph81t04-d1sTblM;-><init>(Lcom/miui/home/recents/ThumbnailBlurManager;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0}, Lcom/miui/home/recents/ThumbnailBlurManager;->registerThumbnailBlurResolver()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/ThumbnailBlurManager;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/miui/home/recents/ThumbnailBlurManager;->RECENTS_PRIVACY_THUMBNAIL_BLUR_KEY:Ljava/lang/String;

    return-object v0
.end method

.method private addDefalutBlurToSetting()Ljava/lang/String;
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    invoke-static {v1}, Lcom/miui/home/recents/ThumbnailBlurManager;->convertSetToString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/ThumbnailBlurManager;->RECENTS_PRIVACY_THUMBNAIL_BLUR_KEY:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0
.end method

.method public static convertSetToString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 88
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method static convertStringToSet(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    const-string v0, ","

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 107
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 108
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initThumbnailBlur()Ljava/lang/String;
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isProvisioned(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 43
    iget-object v1, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isFirstEnterSecondSpace(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "Recents_ThumbnailBlurManager"

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initThumbnailBlur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/ThumbnailBlurManager;->loadBlurPackagesFromSetting()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/ThumbnailBlurManager;->addDefalutBlurToSetting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/recents/ThumbnailBlurManager;Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/miui/home/recents/ThumbnailBlurManager;->initThumbnailBlur()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/recents/ThumbnailBlurManager;Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 36
    invoke-static {p1}, Lcom/miui/home/recents/ThumbnailBlurManager;->convertStringToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->setThumbnailBlurPkgSet(Ljava/util/HashSet;)V

    return-void
.end method

.method private loadBlurPackagesFromSetting()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/ThumbnailBlurManager;->RECENTS_PRIVACY_THUMBNAIL_BLUR_KEY:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerThumbnailBlurResolver()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mThumbnailBlurObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/miui/home/recents/ThumbnailBlurManager$1;

    iget-object v1, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/ThumbnailBlurManager$1;-><init>(Lcom/miui/home/recents/ThumbnailBlurManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mThumbnailBlurObserver:Landroid/database/ContentObserver;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/ThumbnailBlurManager;->RECENTS_PRIVACY_THUMBNAIL_BLUR_KEY:Ljava/lang/String;

    .line 82
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/recents/ThumbnailBlurManager;->mThumbnailBlurObserver:Landroid/database/ContentObserver;

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
