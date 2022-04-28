.class public Lcom/miui/maml/data/ContentProviderBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;,
        Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;,
        Lcom/miui/maml/data/ContentProviderBinder$List;,
        Lcom/miui/maml/data/ContentProviderBinder$Variable;,
        Lcom/miui/maml/data/ContentProviderBinder$Builder;,
        Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field private volatile mAllowReg:Z

.field protected mArgs:[Ljava/lang/String;

.field private mAwareChangeWhilePause:Z

.field private mChangeObserver:Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lcom/miui/maml/data/IndexedVariable;

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Landroid/net/Uri;

.field private mList:Lcom/miui/maml/data/ContentProviderBinder$List;

.field private final mLock:Ljava/lang/Object;

.field private mNeedsRequery:Z

.field protected mOrder:Ljava/lang/String;

.field private mQueryHandler:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

.field private mSystemBootCompleted:Z

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field protected mUriFormatter:Lcom/miui/maml/util/TextFormatter;

.field protected mWhereFormatter:Lcom/miui/maml/util/TextFormatter;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAllowReg:Z

    .line 71
    new-instance v1, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v1, p0}, Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;-><init>(Lcom/miui/maml/data/ContentProviderBinder;)V

    iput-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mChangeObserver:Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

    const/4 v1, -0x1

    .line 82
    iput v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 88
    iput-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 302
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 303
    new-instance p2, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;-><init>(Lcom/miui/maml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mQueryHandler:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    if-eqz p1, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/data/ContentProviderBinder;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;->updateVariables(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/maml/data/ContentProviderBinder;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/maml/data/ContentProviderBinder;->onQueryComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/maml/data/ContentProviderBinder;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkUpdate()V
    .locals 6

    .line 658
    iget v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-gtz v0, :cond_0

    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long/2addr v0, v2

    .line 662
    iget v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->startQuery()V

    const-wide/16 v0, 0x0

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget v4, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 10

    .line 347
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v7

    const-string v0, "uriExp"

    .line 348
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v5

    const-string v0, "uriFormatExp"

    .line 349
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    .line 350
    new-instance v8, Lcom/miui/maml/util/TextFormatter;

    const-string v0, "uri"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "uriFormat"

    .line 351
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "uriParas"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v8

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    iput-object v8, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    const-string v0, "columns"

    .line 352
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    move-object v0, v8

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    const-string v0, "whereExp"

    .line 354
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v5

    const-string v0, "whereFormatExp"

    .line 355
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    .line 356
    new-instance v9, Lcom/miui/maml/util/TextFormatter;

    const-string v0, "where"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "whereFormat"

    .line 357
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "whereParas"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    iput-object v9, p0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    const-string v0, "args"

    .line 358
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v8

    goto :goto_1

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    const-string v0, "order"

    .line 360
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v8

    :cond_2
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    const-string v0, "countName"

    .line 363
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v8

    :cond_3
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 366
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v7, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_4
    const-string v0, "updateInterval"

    const/4 v1, -0x1

    .line 369
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 370
    iget v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v0, :cond_5

    .line 371
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/data/ContentProviderBinder$1;-><init>(Lcom/miui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 378
    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    const-string v0, "List"

    .line 380
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 383
    :try_start_0
    new-instance v1, Lcom/miui/maml/data/ContentProviderBinder$List;

    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Lcom/miui/maml/data/ContentProviderBinder$List;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mList:Lcom/miui/maml/data/ContentProviderBinder$List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "ContentProviderBinder"

    const-string v1, "invalid List"

    .line 385
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    const-string v0, "vigilant"

    .line 388
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    return-void
.end method

.method private onQueryComplete()V
    .locals 0

    .line 499
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->onUpdateComplete()V

    return-void
.end method

.method private registerObserver(Landroid/net/Uri;Z)V
    .locals 3

    .line 503
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mChangeObserver:Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    if-eqz p2, :cond_1

    .line 505
    iget-boolean p2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAllowReg:Z

    if-eqz p2, :cond_1

    .line 506
    iget-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 507
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAllowReg:Z

    if-nez v1, :cond_0

    .line 508
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 511
    :try_start_1
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mChangeObserver:Lcom/miui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ContentProviderBinder"

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  uri:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ContentProviderBinder"

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  uri:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :goto_0
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private updateVariables(Landroid/database/Cursor;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 522
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 523
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v2, :cond_1

    int-to-double v3, v1

    .line 524
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mList:Lcom/miui/maml/data/ContentProviderBinder$List;

    if-eqz v2, :cond_2

    .line 528
    invoke-virtual {v2, p1}, Lcom/miui/maml/data/ContentProviderBinder$List;->fill(Landroid/database/Cursor;)V

    :cond_2
    if-eqz p1, :cond_e

    if-nez v1, :cond_3

    goto/16 :goto_4

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 538
    move-object v3, v2

    check-cast v3, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    .line 539
    iget-boolean v4, v3, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x0

    .line 545
    iget v6, v3, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mRow:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 547
    :try_start_0
    iget-object v6, v3, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 548
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 549
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 550
    iget v7, v2, Lcom/miui/maml/data/VariableBinder$Variable;->mType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    const/16 v8, 0x3e9

    if-eq v7, v8, :cond_8

    packed-switch v7, :pswitch_data_0

    .line 585
    iget v7, v2, Lcom/miui/maml/data/VariableBinder$Variable;->mType:I

    packed-switch v7, :pswitch_data_1

    const-string v6, "ContentProviderBinder"

    goto :goto_2

    .line 587
    :pswitch_0
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    goto :goto_3

    .line 590
    :pswitch_1
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    float-to-double v4, v4

    goto :goto_3

    .line 596
    :pswitch_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-double v4, v4

    goto :goto_3

    .line 593
    :pswitch_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-double v4, v4

    goto :goto_3

    .line 599
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalide type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/miui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :goto_3
    invoke-virtual {v2, v4, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto :goto_1

    .line 552
    :pswitch_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 554
    :cond_6
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 556
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 559
    :pswitch_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 561
    :cond_7
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 563
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    :pswitch_6
    const/4 v4, 0x0

    .line 572
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    if-eqz v5, :cond_9

    .line 574
    array-length v4, v5

    invoke-static {v5, v0, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 575
    :cond_9
    iget v5, v2, Lcom/miui/maml/data/VariableBinder$Variable;->mType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_a

    .line 576
    invoke-virtual {v2, v4}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 578
    :cond_a
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v3, v2}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ImageScreenElement;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 580
    invoke-virtual {v2, v4}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 566
    :cond_b
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 567
    invoke-virtual {v2, v4}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 608
    :cond_c
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v3, v2}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->setNull(Lcom/miui/maml/ScreenElementRoot;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ContentProviderBinder"

    .line 615
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    const-string v2, "ContentProviderBinder"

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const-string v3, "ContentProviderBinder"

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get value from cursor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    return-void

    .line 532
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 533
    check-cast v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;->setNull(Lcom/miui/maml/ScreenElementRoot;)V

    goto :goto_5

    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createCountVar()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_0

    .line 296
    :cond_0
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 315
    :try_start_0
    iput-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAllowReg:Z

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    .line 318
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    .line 319
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    .line 321
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    return-void

    :catchall_0
    move-exception v1

    .line 316
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final getUriText()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 648
    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 650
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->startQuery()V

    :goto_0
    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/ContentProviderBinder$Variable;
    .locals 2

    .line 393
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/ContentProviderBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 2

    .line 326
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->pause()V

    .line 327
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 342
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    .line 343
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 332
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->resume()V

    .line 333
    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->startQuery()V

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/miui/maml/data/ContentProviderBinder;->checkUpdate()V

    :goto_0
    return-void
.end method

.method public final setBlockedColumns([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 443
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 444
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 445
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 449
    check-cast v2, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    if-eqz v1, :cond_2

    .line 450
    iget-object v3, v2, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    iput-boolean v3, v2, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public startQuery()V
    .locals 11

    .line 398
    iget-boolean v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ContentProviderBinder"

    const-string v1, "start query: uri null"

    .line 403
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 407
    :cond_1
    iget-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v1, :cond_2

    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    .line 408
    invoke-static {v2}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    .line 409
    iget-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 413
    iput-boolean v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 414
    iget-object v1, p0, Lcom/miui/maml/data/ContentProviderBinder;->mQueryHandler:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    .line 415
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    .line 419
    :cond_3
    iget v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 420
    invoke-direct {p0, v6, v0}, Lcom/miui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    .line 421
    iput-object v6, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v8

    .line 429
    iget-object v3, p0, Lcom/miui/maml/data/ContentProviderBinder;->mQueryHandler:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    const/16 v4, 0x64

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/miui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v3 .. v10}, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    .line 431
    invoke-direct {p0}, Lcom/miui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method
