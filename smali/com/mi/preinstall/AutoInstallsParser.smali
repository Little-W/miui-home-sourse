.class public Lcom/mi/preinstall/AutoInstallsParser;
.super Ljava/lang/Object;
.source "AutoInstallsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/preinstall/AutoInstallsParser$FolderParser;,
        Lcom/mi/preinstall/AutoInstallsParser$PendingWidgetParser;,
        Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;,
        Lcom/mi/preinstall/AutoInstallsParser$TagParser;
    }
.end annotation


# static fields
.field private static mPAIPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLayoutId:I

.field private final mRootTag:Ljava/lang/String;

.field private final mSourceRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mi/preinstall/AutoInstallsParser;->mContext:Landroid/content/Context;

    .line 64
    iput-object p4, p0, Lcom/mi/preinstall/AutoInstallsParser;->mRootTag:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/mi/preinstall/AutoInstallsParser;->mSourceRes:Landroid/content/res/Resources;

    .line 66
    iput p3, p0, Lcom/mi/preinstall/AutoInstallsParser;->mLayoutId:I

    return-void
.end method

.method static synthetic access$200(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/mi/preinstall/AutoInstallsParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/mi/preinstall/AutoInstallsParser;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mi/preinstall/AutoInstallsParser;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mi/preinstall/AutoInstallsParser;)Landroid/util/ArrayMap;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/mi/preinstall/AutoInstallsParser;->getFolderElementsMap()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method private static beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 179
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 180
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Landroid/content/Context;)Lcom/mi/preinstall/AutoInstallsParser;
    .locals 2

    const-string v0, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/preinstall/AutoInstallParserHelp;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AutoInstallsParser"

    const-string v0, "not found pai config apk"

    .line 45
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    invoke-static {p0, v1, v0}, Lcom/mi/preinstall/AutoInstallsParser;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;)Lcom/mi/preinstall/AutoInstallsParser;

    move-result-object p0

    return-object p0
.end method

.method private static get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;)Lcom/mi/preinstall/AutoInstallsParser;
    .locals 2

    const-string v0, "default_layout"

    const-string v1, "xml"

    .line 52
    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AutoInstallsParser"

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Layout definition not found in package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    new-instance p1, Lcom/mi/preinstall/AutoInstallsParser;

    const-string v1, "workspace"

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/mi/preinstall/AutoInstallsParser;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;)V

    return-object p1
.end method

.method private static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFolderElementsMap()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mi/preinstall/AutoInstallsParser$TagParser;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "autoinstall"

    .line 103
    new-instance v2, Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;-><init>(Lcom/mi/preinstall/AutoInstallsParser;Lcom/mi/preinstall/AutoInstallsParser$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mi/preinstall/AutoInstallsParser$TagParser;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "autoinstall"

    .line 109
    new-instance v2, Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mi/preinstall/AutoInstallsParser$AutoInstallParser;-><init>(Lcom/mi/preinstall/AutoInstallsParser;Lcom/mi/preinstall/AutoInstallsParser$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "folder"

    .line 110
    new-instance v2, Lcom/mi/preinstall/AutoInstallsParser$FolderParser;

    invoke-direct {v2, p0}, Lcom/mi/preinstall/AutoInstallsParser$FolderParser;-><init>(Lcom/mi/preinstall/AutoInstallsParser;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appwidget"

    .line 111
    new-instance v2, Lcom/mi/preinstall/AutoInstallsParser$PendingWidgetParser;

    invoke-direct {v2, p0, v3}, Lcom/mi/preinstall/AutoInstallsParser$PendingWidgetParser;-><init>(Lcom/mi/preinstall/AutoInstallsParser;Lcom/mi/preinstall/AutoInstallsParser$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized getPAIPackageList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mi/preinstall/AutoInstallsParser;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Lcom/mi/preinstall/AutoInstallsParser;->mPAIPackageList:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/mi/preinstall/AutoInstallsParser;->mPAIPackageList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 191
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/mi/preinstall/AutoInstallsParser;->get(Landroid/content/Context;)Lcom/mi/preinstall/AutoInstallsParser;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/mi/preinstall/AutoInstallsParser;->parseLayout()Ljava/util/List;

    move-result-object p0

    const-string v1, "AutoInstallsParser"

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPAIPackageList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 196
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    sget-object v2, Lcom/mi/preinstall/AutoInstallsParser;->mPAIPackageList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mi/preinstall/AutoInstallsParser;->mPAIPackageList:Ljava/util/List;

    .line 200
    :cond_1
    sget-object v2, Lcom/mi/preinstall/AutoInstallsParser;->mPAIPackageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "AutoInstallsParser"

    const-string v2, "getPAIPackageList: "

    .line 205
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_2
    sget-object p0, Lcom/mi/preinstall/AutoInstallsParser;->mPAIPackageList:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isPAIPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-class v0, Lcom/mi/preinstall/AutoInstallsParser;

    monitor-enter v0

    :try_start_0
    const-string v1, "AutoInstallsParser"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPAIPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p0}, Lcom/mi/preinstall/AutoInstallsParser;->getPAIPackageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 216
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 217
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private parseAndAddNode(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/mi/preinstall/AutoInstallsParser$TagParser;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mi/preinstall/AutoInstallsParser$TagParser;

    if-nez p2, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-interface {p2, p1, p3}, Lcom/mi/preinstall/AutoInstallsParser$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public parseLayout()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/mi/preinstall/AutoInstallsParser;->mSourceRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/mi/preinstall/AutoInstallsParser;->mLayoutId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/mi/preinstall/AutoInstallsParser;->mRootTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mi/preinstall/AutoInstallsParser;->beginDocument(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    .line 74
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 76
    invoke-direct {p0}, Lcom/mi/preinstall/AutoInstallsParser;->getLayoutElementsMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 77
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 78
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_2

    :cond_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, v1, v3, v0}, Lcom/mi/preinstall/AutoInstallsParser;->parseAndAddNode(Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
