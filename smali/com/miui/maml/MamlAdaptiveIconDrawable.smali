.class public Lcom/miui/maml/MamlAdaptiveIconDrawable;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "MamlAdaptiveIconDrawable.java"


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "MamlAdaptiveIconDrawable"


# instance fields
.field private volatile mLayerFancyDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/FancyDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLayerQuietDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockFancy:Ljava/lang/Object;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 24
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    .line 25
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 24
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    .line 25
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p3, p4}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->init(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    return-void
.end method

.method private addFancyDrawable(Lcom/miui/maml/AnimatingDrawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 131
    invoke-virtual {p1}, Lcom/miui/maml/AnimatingDrawable;->getFancyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/FancyDrawable;

    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V
    .locals 3

    const-string/jumbo v0, "window"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 48
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "den"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "quietImage.png"

    invoke-virtual {p2, p1, v0}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private prepareLayerFancyDrawables()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    instance-of v1, v0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v1, :cond_1

    .line 113
    check-cast v0, Lcom/miui/maml/AnimatingDrawable;

    invoke-direct {p0, v0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->addFancyDrawable(Lcom/miui/maml/AnimatingDrawable;)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_3

    .line 118
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 120
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 121
    instance-of v4, v3, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v4, :cond_2

    .line 122
    check-cast v3, Lcom/miui/maml/AnimatingDrawable;

    invoke-direct {p0, v3}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->addFancyDrawable(Lcom/miui/maml/AnimatingDrawable;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private prepareLayerQuietDrawables()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    instance-of v1, v0, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    check-cast v0, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {v0}, Lcom/miui/maml/AnimatingDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_3

    .line 95
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 97
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 98
    instance-of v4, v3, Lcom/miui/maml/AnimatingDrawable;

    if-eqz v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    check-cast v3, Lcom/miui/maml/AnimatingDrawable;

    invoke-virtual {v3}, Lcom/miui/maml/AnimatingDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getLayerFancyDrawables()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/FancyDrawable;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->prepareLayerFancyDrawables()V

    .line 78
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayerQuietDrawables()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->prepareLayerQuietDrawables()V

    .line 69
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTopQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
