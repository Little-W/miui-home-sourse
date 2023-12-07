.class public Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;
.super Lcom/miui/maml/elements/filament/UniformFactory$Uniform;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatUniform"
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "float"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected doRefresh()V
    .locals 12

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    .line 221
    :cond_0
    iget-object v6, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v7, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v1

    .line 222
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v8, v0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    .line 223
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v9, v0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v3

    .line 224
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v10, v0

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v4

    .line 225
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v11, v0

    .line 221
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FFFF)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v1, v5, v1

    .line 216
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v1, v5

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v2, v5, v2

    .line 217
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v2, v5

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v3

    .line 218
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float p0, v5

    .line 215
    invoke-virtual {v0, v4, v1, v2, p0}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FFF)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v3, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v1, v4, v1

    .line 211
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float v1, v4

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v2

    .line 212
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float p0, v4

    .line 210
    invoke-virtual {v0, v3, v1, p0}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FF)V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mName:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float p0, v3

    invoke-virtual {v0, v2, p0}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected doUpdateParams()V
    .locals 0

    return-void
.end method
