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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createNewFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    return-void
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .locals 3

    const-string v0, "Gadgets"

    const-string v1, "Gadget"

    .line 403
    new-instance v2, Lcom/miui/maml/util/ConfigFile$4;

    invoke-direct {v2, p0}, Lcom/miui/maml/util/ConfigFile$4;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V
    .locals 3

    .line 420
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    .line 424
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 425
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    check-cast v0, Lorg/w3c/dom/Element;

    .line 428
    invoke-interface {p4, v0}, Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .locals 3

    const-string v0, "Tasks"

    const-string v1, "Intent"

    .line 394
    new-instance v2, Lcom/miui/maml/util/ConfigFile$3;

    invoke-direct {v2, p0}, Lcom/miui/maml/util/ConfigFile$3;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 3

    const-string v0, "Variables"

    const-string v1, "Variable"

    .line 385
    new-instance v2, Lcom/miui/maml/util/ConfigFile$2;

    invoke-direct {v2, p0}, Lcom/miui/maml/util/ConfigFile$2;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "string"

    .line 436
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "number"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/ConfigFile$Variable;

    if-nez v0, :cond_2

    .line 440
    new-instance v0, Lcom/miui/maml/util/ConfigFile$Variable;

    invoke-direct {v0}, Lcom/miui/maml/util/ConfigFile$Variable;-><init>()V

    .line 441
    iput-object p1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_2
    iput-object p3, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 445
    iput-object p2, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private writeGadgets(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 340
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Gadgets"

    const/4 v1, 0x0

    .line 343
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v0, "path"

    const-string v2, "x"

    const-string v3, "y"

    .line 345
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v2, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/util/ConfigFile$Gadget;

    const/4 v5, 0x3

    .line 349
    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, v3, Lcom/miui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    aput-object v6, v5, v1

    iget v6, v3, Lcom/miui/maml/util/ConfigFile$Gadget;->x:I

    .line 350
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x2

    iget v3, v3, Lcom/miui/maml/util/ConfigFile$Gadget;->y:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "Gadget"

    .line 352
    invoke-static {p1, v3, v0, v5, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "Gadgets"

    .line 354
    invoke-static {p1, v0, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "<"

    .line 358
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "/"

    .line 360
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">\n"

    .line 362
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 366
    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "<"

    .line 370
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 372
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    if-eqz p4, :cond_0

    .line 373
    aget-object v0, p3, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, " "

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    .line 377
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    aget-object v0, p3, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "/>\n"

    .line 381
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeTasks(Ljava/lang/StringBuilder;)V
    .locals 13

    .line 321
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Tasks"

    const/4 v1, 0x0

    .line 324
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/4 v0, 0x7

    .line 326
    new-array v2, v0, [Ljava/lang/String;

    sget-object v3, Lcom/miui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    aput-object v3, v2, v1

    sget-object v3, Lcom/miui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/miui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    sget-object v3, Lcom/miui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v3, v2, v7

    sget-object v3, Lcom/miui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    const/4 v8, 0x5

    aput-object v3, v2, v8

    sget-object v3, Lcom/miui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    const/4 v9, 0x6

    aput-object v3, v2, v9

    .line 330
    iget-object v3, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/maml/util/Task;

    .line 331
    new-array v11, v0, [Ljava/lang/String;

    iget-object v12, v10, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    aput-object v12, v11, v1

    iget-object v12, v10, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    aput-object v12, v11, v4

    iget-object v12, v10, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    aput-object v12, v11, v5

    iget-object v12, v10, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    aput-object v12, v11, v6

    iget-object v12, v10, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    aput-object v12, v11, v7

    iget-object v12, v10, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    aput-object v12, v11, v8

    iget-object v10, v10, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    aput-object v10, v11, v9

    const-string v10, "Intent"

    .line 334
    invoke-static {p1, v10, v2, v11, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "Tasks"

    .line 336
    invoke-static {p1, v0, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method private writeVariables(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 303
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Variables"

    const/4 v1, 0x0

    .line 306
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v0, "name"

    const-string v2, "type"

    const-string v3, "value"

    .line 308
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v2, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/util/ConfigFile$Variable;

    const/4 v5, 0x3

    .line 312
    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, v3, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v6, v3, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    aput-object v6, v5, v4

    const/4 v4, 0x2

    iget-object v3, v3, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    aput-object v3, v5, v4

    const-string v3, "Variable"

    .line 315
    invoke-static {p1, v3, v0, v5}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Variables"

    .line 317
    invoke-static {p1, v0, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/util/Task;

    return-object p1
.end method

.method public getTasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/Task;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/util/ConfigFile$Variable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p1, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getVariables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 4

    .line 171
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 173
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 174
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 178
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 181
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 204
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    .line 185
    :cond_0
    :try_start_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_1

    .line 204
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return v1

    .line 188
    :cond_1
    :try_start_5
    invoke-direct {p0, p1}, Lcom/miui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/miui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/miui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 p1, 0x1

    .line 204
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catch_4
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_6
    move-exception p1

    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_5

    :catch_7
    move-exception p1

    .line 200
    :goto_0
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_3

    .line 204
    :goto_1
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    goto :goto_6

    :catch_8
    move-exception p1

    .line 198
    :goto_2
    :try_start_9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v2, :cond_3

    goto :goto_1

    :catch_9
    move-exception p1

    .line 196
    :goto_3
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    if-eqz v2, :cond_3

    goto :goto_1

    :catch_a
    move-exception p1

    .line 194
    :goto_4
    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_3

    goto :goto_1

    :goto_5
    if-eqz v3, :cond_2

    .line 204
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .line 207
    :catch_b
    :cond_2
    throw p1

    :catch_c
    move-object v3, v2

    :catch_d
    if-eqz v3, :cond_3

    .line 204
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    :catch_e
    :cond_3
    :goto_6
    return v1
.end method

.method public loadDefaultSettings(Lorg/w3c/dom/Element;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 261
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Group"

    .line 264
    new-instance v1, Lcom/miui/maml/util/ConfigFile$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/util/ConfigFile$1;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public moveGadget(Lcom/miui/maml/util/ConfigFile$Gadget;I)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public putGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putNumber(Ljava/lang/String;D)V
    .locals 0

    .line 227
    invoke-static {p2, p3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    .line 222
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "string"

    .line 217
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putTask(Lcom/miui/maml/util/Task;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 231
    iget-object v0, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public removeGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/miui/maml/util/ConfigFile;->save(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public save(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config"

    const/4 v2, 0x0

    .line 110
    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 111
    invoke-direct {p0, v0}, Lcom/miui/maml/util/ConfigFile;->writeVariables(Ljava/lang/StringBuilder;)V

    .line 112
    invoke-direct {p0, v0}, Lcom/miui/maml/util/ConfigFile;->writeTasks(Ljava/lang/StringBuilder;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/miui/maml/util/ConfigFile;->writeGadgets(Ljava/lang/StringBuilder;)V

    const-string v1, "Config"

    const/4 v3, 0x1

    .line 114
    invoke-static {v0, v1, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 116
    iget-boolean v1, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;-><init>(Lcom/miui/maml/util/ConfigFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v3

    .line 120
    :cond_0
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ConfigFile"

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create target file or temp file failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_1
    move-exception v4

    .line 126
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 127
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    if-eqz v5, :cond_2

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "temp"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    goto :goto_0

    .line 133
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temp"

    invoke-virtual {p2, v5, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "temp"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    .line 136
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 147
    :goto_1
    :try_start_2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmiui/content/res/ThemeNativeUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lmiui/content/res/ThemeNativeUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {v1, p1}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    invoke-static {v1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    :goto_2
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    return v3

    :cond_4
    :try_start_3
    const-string p1, "ConfigFile"

    const-string p2, "target file and temp file are not exists"

    .line 154
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return v2

    :catch_2
    move-exception p1

    const-string p2, "ConfigFile"

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write file error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_3
    const-string p1, "ConfigFile"

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create target file failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public setSaveViaProvider(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    return-void
.end method
