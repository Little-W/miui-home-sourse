.class public Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;
.super Lcom/miui/maml/elements/filament/UniformFactory$Uniform;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoolUniform"
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "bool"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V
    .locals 0

    .line 243
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected doRefresh()V
    .locals 14

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_c

    const/4 v5, 0x2

    if-eq v0, v5, :cond_9

    const/4 v6, 0x3

    if-eq v0, v6, :cond_5

    const/4 v7, 0x4

    if-eq v0, v7, :cond_0

    goto/16 :goto_7

    .line 266
    :cond_0
    iget-object v8, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v9, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mName:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    cmpl-double v0, v10, v1

    if-lez v0, :cond_1

    move v10, v4

    goto :goto_0

    :cond_1
    move v10, v3

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v11

    cmpl-double v0, v11, v1

    if-lez v0, :cond_2

    move v11, v4

    goto :goto_1

    :cond_2
    move v11, v3

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v0, v12, v1

    if-lez v0, :cond_3

    move v12, v4

    goto :goto_2

    :cond_3
    move v12, v3

    .line 270
    :goto_2
    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double p0, v5, v1

    if-lez p0, :cond_4

    move v13, v4

    goto :goto_3

    :cond_4
    move v13, v3

    .line 266
    :goto_3
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;ZZZZ)V

    goto/16 :goto_7

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v6, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mName:Ljava/lang/String;

    .line 261
    iget-object v7, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double v7, v7, v1

    if-lez v7, :cond_6

    move v7, v4

    goto :goto_4

    :cond_6
    move v7, v3

    .line 262
    :goto_4
    iget-object v8, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    cmpl-double v8, v8, v1

    if-lez v8, :cond_7

    move v8, v4

    goto :goto_5

    :cond_7
    move v8, v3

    .line 263
    :goto_5
    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v9

    cmpl-double p0, v9, v1

    if-lez p0, :cond_8

    move v3, v4

    .line 260
    :cond_8
    invoke-virtual {v0, v6, v7, v8, v3}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;ZZZ)V

    goto :goto_7

    .line 255
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mName:Ljava/lang/String;

    .line 256
    iget-object v6, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpl-double v6, v6, v1

    if-lez v6, :cond_a

    move v6, v4

    goto :goto_6

    :cond_a
    move v6, v3

    .line 257
    :goto_6
    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double p0, v7, v1

    if-lez p0, :cond_b

    move v3, v4

    .line 255
    :cond_b
    invoke-virtual {v0, v5, v6, v3}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;ZZ)V

    goto :goto_7

    .line 251
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mName:Ljava/lang/String;

    .line 252
    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpl-double p0, v6, v1

    if-lez p0, :cond_d

    move v3, v4

    .line 251
    :cond_d
    invoke-virtual {v0, v5, v3}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_7
    return-void
.end method

.method protected doUpdateParams()V
    .locals 0

    return-void
.end method
