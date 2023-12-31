.class public abstract Lcom/miui/maml/elements/filament/UniformFactory$Uniform;
.super Ljava/lang/Object;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Uniform"
.end annotation


# instance fields
.field protected mAutoRefresh:Z

.field protected mContext:Landroid/content/Context;

.field protected mEngine:Lcom/google/android/filament/Engine;

.field protected mIsParamsValid:Z

.field protected mManager:Lcom/miui/maml/ResourceManager;

.field protected mMaterial:Lcom/google/android/filament/MaterialInstance;

.field protected mName:Ljava/lang/String;

.field protected mParams:[Lcom/miui/maml/data/Expression;

.field protected mType:I

.field protected mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mVariables:Lcom/miui/maml/data/Variables;

    const-string p3, "name"

    .line 82
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mName:Ljava/lang/String;

    .line 83
    iput p4, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mType:I

    const-string p3, "type"

    const/4 p4, 0x1

    invoke-static {p1, p3, p4}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    const-string p3, "params"

    .line 84
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    .line 85
    iget-object p2, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-direct {p0, p2}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mIsParamsValid:Z

    const-string p2, "refresh"

    .line 86
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mAutoRefresh:Z

    return-void
.end method

.method private isExpressionsValid([Lcom/miui/maml/data/Expression;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 138
    array-length v0, p1

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    :goto_1
    array-length p1, p1

    if-ne v1, p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method


# virtual methods
.method protected abstract doRefresh()V
.end method

.method protected abstract doUpdateParams()V
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mEngine:Lcom/google/android/filament/Engine;

    .line 97
    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mManager:Lcom/miui/maml/ResourceManager;

    .line 98
    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public init(Lcom/miui/maml/ResourceManager;Lcom/google/android/filament/Engine;Lcom/google/android/filament/MaterialInstance;)V
    .locals 0

    .line 90
    iput-object p2, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mEngine:Lcom/google/android/filament/Engine;

    .line 91
    iput-object p3, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    .line 92
    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mManager:Lcom/miui/maml/ResourceManager;

    return-void
.end method

.method public isAutoRefresh()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mAutoRefresh:Z

    return p0
.end method

.method public refresh()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->doRefresh()V

    :cond_0
    return-void
.end method

.method public tryPause()V
    .locals 0

    return-void
.end method

.method public tryResume()V
    .locals 0

    return-void
.end method

.method public updateUniform(Z[Lcom/miui/maml/data/Expression;)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mAutoRefresh:Z

    .line 121
    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_1

    .line 122
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iput-object p2, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->doUpdateParams()V

    :cond_1
    return-void
.end method
