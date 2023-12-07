.class public Lcom/miui/maml/ScreenElementRootFactory;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ScreenElementRootFactory$Parameter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ScreenElementRoot;
    .locals 8

    .line 33
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->access$000(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->access$100(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ResourceLoader;

    move-result-object v1

    .line 38
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->access$200(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 39
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    new-instance v1, Lcom/miui/maml/util/ZipResourceLoader;

    invoke-direct {v1, p0}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Lcom/miui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    move-result-object v1

    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_1
    new-instance p0, Lcom/miui/maml/LifecycleResourceManager;

    const-wide/32 v4, 0x36ee80

    const-wide/32 v6, 0x57e40

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/maml/LifecycleResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;JJ)V

    .line 47
    new-instance v1, Lcom/miui/maml/ScreenContext;

    invoke-direct {v1, v0, p0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    .line 48
    new-instance p0, Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {p0, v1}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    return-object p0

    .line 35
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
