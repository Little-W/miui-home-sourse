.class public Lcom/miui/maml/util/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;,
        Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;,
        Lcom/miui/maml/util/ConfigFile$Gadget;,
        Lcom/miui/maml/util/ConfigFile$Variable;
    }
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigFile"

.field private static final METHOD:Ljava/lang/String; = "saveConfigFile"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final TAG_APP_PICKER:Ljava/lang/String; = "AppPicker"

.field public static final TAG_CHECK_BOX:Ljava/lang/String; = "CheckBox"

.field private static final TAG_GADGET:Ljava/lang/String; = "Gadget"

.field private static final TAG_GADGETS:Ljava/lang/String; = "Gadgets"

.field public static final TAG_GROUP:Ljava/lang/String; = "Group"

.field public static final TAG_IMAGE_PICKER:Ljava/lang/String; = "ImagePicker"

.field public static final TAG_NUMBER_CHOICE:Ljava/lang/String; = "NumberChoice"

.field public static final TAG_NUMBER_INPUT:Ljava/lang/String; = "NumberInput"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field public static final TAG_STRING_CHOICE:Ljava/lang/String; = "StringChoice"

.field public static final TAG_STRING_INPUT:Ljava/lang/String; = "StringInput"

.field private static final TAG_TASK:Ljava/lang/String; = "Intent"

.field private static final TAG_TASKS:Ljava/lang/String; = "Tasks"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"

.field private static final URI:Ljava/lang/String; = "content://com.miui.maml.provider"


# instance fields
.field private mDirty:Z

.field private mFilePath:Ljava/lang/String;

.field private mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveViaProvider:Z

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/util/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createNewFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 289
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 292
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    return-void
.end method

.method private load(Ljava/lang/String;Z)Z
    .locals 3

    .line 176
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 178
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 179
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 181
    :try_start_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    .line 186
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 187
    invoke-virtual {p2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 188
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    .line 199
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return v1

    .line 192
    :cond_4
    :try_start_3
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 199
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    return v1

    .line 195
    :cond_6
    :try_start_5
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 196
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    .line 197
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 p0, 0x1

    if-eqz p1, :cond_7

    .line 199
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    return p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_8

    .line 181
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 397
    new-instance v0, Lcom/miui/maml/util/ConfigFile$4;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$4;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    const-string v1, "Gadgets"

    const-string v2, "Gadget"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V
    .locals 2

    .line 414
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    .line 418
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 419
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    .line 420
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    check-cast p2, Lorg/w3c/dom/Element;

    .line 422
    invoke-interface {p4, p2}, Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 388
    new-instance v0, Lcom/miui/maml/util/ConfigFile$3;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$3;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    const-string v1, "Tasks"

    const-string v2, "Intent"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 379
    new-instance v0, Lcom/miui/maml/util/ConfigFile$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$2;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    const-string v1, "Variables"

    const-string v2, "Variable"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "string"

    .line 430
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "number"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/ConfigFile$Variable;

    if-nez v0, :cond_2

    .line 434
    new-instance v0, Lcom/miui/maml/util/ConfigFile$Variable;

    invoke-direct {v0}, Lcom/miui/maml/util/ConfigFile$Variable;-><init>()V

    .line 435
    iput-object p1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 436
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_2
    iput-object p3, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 439
    iput-object p2, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private writeGadgets(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 334
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Gadgets"

    .line 337
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v2, "path"

    const-string v3, "x"

    const-string v4, "y"

    .line 339
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 342
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/util/ConfigFile$Gadget;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 343
    iget-object v6, v3, Lcom/miui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    aput-object v6, v5, v0

    iget v6, v3, Lcom/miui/maml/util/ConfigFile$Gadget;->x:I

    .line 344
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x2

    iget v3, v3, Lcom/miui/maml/util/ConfigFile$Gadget;->y:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "Gadget"

    .line 346
    invoke-static {p1, v3, v2, v5, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-static {p1, v1, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "<"

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "/"

    .line 354
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">\n"

    .line 356
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 360
    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "<"

    .line 364
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 366
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    if-eqz p4, :cond_0

    .line 367
    aget-object v0, p3, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, " "

    .line 369
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    aget-object v0, p3, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "/>\n"

    .line 375
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeTasks(Ljava/lang/StringBuilder;)V
    .locals 13

    .line 315
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Tasks"

    const/4 v1, 0x0

    .line 318
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/String;

    .line 320
    sget-object v4, Lcom/miui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    aput-object v4, v3, v1

    sget-object v4, Lcom/miui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/miui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Lcom/miui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    sget-object v4, Lcom/miui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v4, v3, v8

    sget-object v4, Lcom/miui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    const/4 v9, 0x5

    aput-object v4, v3, v9

    sget-object v4, Lcom/miui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    const/4 v10, 0x6

    aput-object v4, v3, v10

    .line 324
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/util/Task;

    new-array v11, v2, [Ljava/lang/String;

    .line 325
    iget-object v12, v4, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    aput-object v12, v11, v1

    iget-object v12, v4, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    aput-object v12, v11, v5

    iget-object v12, v4, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    aput-object v12, v11, v6

    iget-object v12, v4, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    aput-object v12, v11, v7

    iget-object v12, v4, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    aput-object v12, v11, v8

    iget-object v12, v4, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    aput-object v12, v11, v9

    iget-object v4, v4, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    aput-object v4, v11, v10

    const-string v4, "Intent"

    .line 328
    invoke-static {p1, v4, v3, v11, v5}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {p1, v0, v5}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method private writeVariables(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 297
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Variables"

    .line 300
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v2, "name"

    const-string v3, "type"

    const-string v4, "value"

    .line 302
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 305
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/util/ConfigFile$Variable;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 306
    iget-object v6, v3, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    iget-object v6, v3, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    aput-object v6, v5, v4

    const/4 v4, 0x2

    iget-object v3, v3, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    aput-object v3, v5, v4

    const-string v3, "Variable"

    .line 309
    invoke-static {p1, v3, v2, v5}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {p1, v1, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/util/Task;

    return-object p0
.end method

.method public getTasks()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/Task;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/util/ConfigFile$Variable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getVariables()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public loadByIconStream(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public loadDefaultSettings(Lorg/w3c/dom/Element;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 255
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Lcom/miui/maml/util/ConfigFile$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$1;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    const-string p0, "Group"

    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public moveGadget(Lcom/miui/maml/util/ConfigFile$Gadget;I)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public putGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putNumber(Ljava/lang/String;D)V
    .locals 0

    .line 221
    invoke-static {p2, p3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    .line 216
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "string"

    .line 211
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putTask(Lcom/miui/maml/util/Task;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 225
    iget-object v0, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/miui/maml/util/ConfigFile;->save(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public save(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10

    const-string v0, "ConfigFile"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config"

    const/4 v3, 0x0

    .line 107
    invoke-static {v1, v2, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 108
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeVariables(Ljava/lang/StringBuilder;)V

    .line 109
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTasks(Ljava/lang/StringBuilder;)V

    .line 110
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeGadgets(Ljava/lang/StringBuilder;)V

    const/4 v4, 0x1

    .line 111
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 113
    iget-boolean v2, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    if-eqz v2, :cond_0

    .line 114
    new-instance v0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;-><init>(Lcom/miui/maml/util/ConfigFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v4

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->removeFile(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create target file or temp file failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_1
    move-exception v5

    .line 123
    :try_start_1
    invoke-virtual {p2, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 124
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v8, 0x17

    const-string v9, "temp"

    if-lt v7, v8, :cond_1

    if-eqz v6, :cond_2

    .line 126
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 130
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 133
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 144
    :goto_2
    :try_start_3
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/maml/util/Utils;->writeDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 146
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/miui/maml/util/Utils;->writeDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {v2, p1}, Lcom/miui/maml/util/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v2}, Lcom/miui/maml/util/Utils;->removeFile(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 158
    :goto_3
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    return v4

    :cond_4
    :try_start_4
    const-string p0, "target file and temp file are not exists"

    .line 151
    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return v3

    :catch_2
    move-exception p0

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "write file error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 135
    :catch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "create target file failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public setSaveViaProvider(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    return-void
.end method
