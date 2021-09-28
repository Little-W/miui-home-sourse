.class public Lcom/miui/maml/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextVariables:Lcom/miui/maml/data/ContextVariables;

.field public final mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mObjectFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final mResourceManager:Lcom/miui/maml/ResourceManager;

.field public final mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/miui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lcom/miui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Lcom/miui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Lcom/miui/maml/elements/ScreenElementFactory;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/miui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/miui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lcom/miui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V
    .locals 1

    .line 41
    new-instance v0, Lcom/miui/maml/data/Variables;

    invoke-direct {v0}, Lcom/miui/maml/data/Variables;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;Lcom/miui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->initContextIfNeed(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 49
    iput-object p3, p0, Lcom/miui/maml/ScreenContext;->mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p4, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 52
    new-instance p1, Lcom/miui/maml/data/ContextVariables;

    invoke-direct {p1}, Lcom/miui/maml/data/ContextVariables;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/ScreenContext;->mContextVariables:Lcom/miui/maml/data/ContextVariables;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final declared-synchronized getObjectFactory(Ljava/lang/String;)Lcom/miui/maml/ObjectFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/maml/ObjectFactory;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/ObjectFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 104
    :catch_0
    monitor-exit p0

    return-object v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized registerObjectFactory(Ljava/lang/String;Lcom/miui/maml/ObjectFactory;)V
    .locals 2

    monitor-enter p0

    if-nez p2, :cond_1

    .line 74
    :try_start_0
    iget-object p2, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 75
    iget-object p2, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/miui/maml/ObjectFactory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ObjectFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    if-ne v1, p2, :cond_3

    .line 91
    monitor-exit p0

    return-void

    .line 92
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/miui/maml/ObjectFactory;->getOld()Lcom/miui/maml/ObjectFactory;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {p2, v0}, Lcom/miui/maml/ObjectFactory;->setOld(Lcom/miui/maml/ObjectFactory;)V

    .line 96
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 80
    :cond_5
    :try_start_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectFactory name mismatchs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
