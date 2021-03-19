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
    .locals 12

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 266
    :pswitch_0
    iget-object v6, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v7, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v5

    .line 267
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    cmpl-double v0, v8, v2

    if-lez v0, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v4

    .line 268
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v9

    cmpl-double v0, v9, v2

    if-lez v0, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v5

    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v1

    .line 269
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v5

    :goto_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 270
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    move v11, v4

    goto :goto_3

    :cond_3
    move v11, v5

    .line 266
    :goto_3
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;ZZZZ)V

    goto/16 :goto_a

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v6, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mName:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v7, v7, v5

    .line 261
    invoke-virtual {v7}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double v7, v7, v2

    if-lez v7, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move v7, v5

    :goto_4
    iget-object v8, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v8, v8, v4

    .line 262
    invoke-virtual {v8}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    cmpl-double v8, v8, v2

    if-lez v8, :cond_5

    move v8, v4

    goto :goto_5

    :cond_5
    move v8, v5

    :goto_5
    iget-object v9, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v1, v9, v1

    .line 263
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v9

    cmpl-double v1, v9, v2

    if-lez v1, :cond_6

    goto :goto_6

    :cond_6
    move v4, v5

    .line 260
    :goto_6
    invoke-virtual {v0, v6, v7, v8, v4}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;ZZZ)V

    goto :goto_a

    .line 255
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mName:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v6, v6, v5

    .line 256
    invoke-virtual {v6}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpl-double v6, v6, v2

    if-lez v6, :cond_7

    move v6, v4

    goto :goto_7

    :cond_7
    move v6, v5

    :goto_7
    iget-object v7, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v7, v7, v4

    .line 257
    invoke-virtual {v7}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double v2, v7, v2

    if-lez v2, :cond_8

    goto :goto_8

    :cond_8
    move v4, v5

    .line 255
    :goto_8
    invoke-virtual {v0, v1, v6, v4}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;ZZ)V

    goto :goto_a

    .line 251
    :pswitch_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mName:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/maml/elements/filament/UniformFactory$BoolUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v6, v6, v5

    .line 252
    invoke-virtual {v6}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpl-double v2, v6, v2

    if-lez v2, :cond_9

    goto :goto_9

    :cond_9
    move v4, v5

    .line 251
    :goto_9
    invoke-virtual {v0, v1, v4}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected doUpdateParams()V
    .locals 0

    return-void
.end method
