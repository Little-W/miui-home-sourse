.class public Lcom/miui/home/launcher/common/AppCategoryManager;
.super Ljava/lang/Object;
.source "AppCategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/miui/home/launcher/common/AppCategoryManager;

.field private static sAppCategoryResourceList:Landroid/util/SparseIntArray;

.field private static final sCategoryList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsFolderCategorySupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sCategoryList:Ljava/util/HashMap;

    .line 38
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    .line 39
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x7f100084

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f10008d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f100090

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f100087

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f10008f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f10008a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f100081

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f10008e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x7f10008c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f10008b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x7f100089

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x7f100082

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x7f100083

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x7f100086

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, 0x7f100085

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0x1b

    const v2, 0x7f100088

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    const/16 v1, 0xd1

    const v2, 0x7f100091

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/common/AppCategoryManager;->mIsFolderCategorySupport:Z

    .line 68
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private checkCategoryNameSupport()V
    .locals 4

    .line 137
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 139
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.xiaomi.discover"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x1d365d

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/common/AppCategoryManager;->mIsFolderCategorySupport:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Launcher.AppCategory"

    const-string v2, "checkCategoryNameSupport error"

    .line 142
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 145
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/common/AppCategoryManager;->mIsFolderCategorySupport:Z

    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;
    .locals 1

    .line 61
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->mInstance:Lcom/miui/home/launcher/common/AppCategoryManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/miui/home/launcher/common/AppCategoryManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/AppCategoryManager;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->mInstance:Lcom/miui/home/launcher/common/AppCategoryManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/AppCategoryManager;->mInstance:Lcom/miui/home/launcher/common/AppCategoryManager;

    return-object v0
.end method

.method private initAppCategoryList(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_category.db"

    .line 152
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 156
    :cond_0
    sget-object v2, Lcom/miui/home/launcher/common/AppCategoryManager;->sCategoryList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 157
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gtz v2, :cond_3

    return-void

    .line 164
    :cond_3
    new-instance v2, Ljava/util/Scanner;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v5, 0x7f0f0000

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 169
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 170
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p1

    const-string v4, "\\s+"

    .line 171
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 173
    :try_start_0
    aget-object v5, v4, v3

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    sget-object v5, Lcom/miui/home/launcher/common/AppCategoryManager;->sCategoryList:Ljava/util/HashMap;

    aget-object v6, v4, v3

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "Launcher.AppCategory"

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initAppCategoryList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_5
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 183
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 184
    sget-object v2, Lcom/miui/home/launcher/common/AppCategoryManager;->sCategoryList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string p1, "Launcher.AppCategory"

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init app category list using:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$S97SAkHmgFRCduPoPazbl7ZywC4(Lcom/miui/home/launcher/common/AppCategoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AppCategoryManager;->checkCategoryNameSupport()V

    return-void
.end method

.method public static synthetic lambda$initAppCategoryListAsync$0(Lcom/miui/home/launcher/common/AppCategoryManager;Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/common/AppCategoryManager;->initAppCategoryList(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 123
    invoke-direct {p0}, Lcom/miui/home/launcher/common/AppCategoryManager;->checkCategoryNameSupport()V

    return-void
.end method


# virtual methods
.method public varargs getAppCategoryId(Landroid/content/Context;Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;[Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/AppCategoryManager$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/miui/home/launcher/common/AppCategoryManager$1;-><init>(Lcom/miui/home/launcher/common/AppCategoryManager;Landroid/content/Context;[Ljava/lang/String;Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 84
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/AppCategoryManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs getCategoryName(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 88
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/AppCategoryManager;->mIsFolderCategorySupport:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/market/sdk/MarketManager;->getCategoryName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f1001de

    if-eqz v1, :cond_6

    .line 91
    invoke-static {p1}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/market/sdk/MarketManager;->getCategory([Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 93
    sget-object v1, Lcom/miui/home/launcher/common/AppCategoryManager;->sCategoryList:Ljava/util/HashMap;

    monitor-enter v1

    .line 94
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 95
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_1

    .line 96
    aget-object v5, p2, v4

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 98
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/common/AppCategoryManager;->initAppCategoryList(Landroid/content/Context;Ljava/util/HashSet;)V

    move v0, v3

    .line 99
    :goto_2
    array-length v4, p2

    if-ge v0, v4, :cond_3

    .line 100
    sget-object v4, Lcom/miui/home/launcher/common/AppCategoryManager;->sCategoryList:Ljava/util/HashMap;

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    sget-object v3, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/miui/home/launcher/common/AppCategoryManager;->sCategoryList:Ljava/util/HashMap;

    aget-object p2, p2, v0

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 105
    :cond_3
    :goto_3
    monitor-exit v1

    move p2, v3

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 107
    :cond_4
    sget-object p2, Lcom/miui/home/launcher/common/AppCategoryManager;->sAppCategoryResourceList:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    .line 109
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p2, :cond_5

    move p2, v2

    :cond_5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    const-string p2, "Folder"

    .line 110
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_5
    const-string p1, "Launcher.AppCategory"

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCategoryName:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public initAppCategoryListAsync(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$Qcqhb57aAiubzj3bMQeiLqNhu48;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$Qcqhb57aAiubzj3bMQeiLqNhu48;-><init>(Lcom/miui/home/launcher/common/AppCategoryManager;Landroid/content/Context;Ljava/util/HashSet;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageChangedMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "com.xiaomi.discover"

    .line 131
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$S97SAkHmgFRCduPoPazbl7ZywC4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$S97SAkHmgFRCduPoPazbl7ZywC4;-><init>(Lcom/miui/home/launcher/common/AppCategoryManager;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
