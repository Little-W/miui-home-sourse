.class public Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;
.super Lcom/miui/maml/elements/filament/UniformFactory$Uniform;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntUniform"
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "int"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected doRefresh()V
    .locals 12

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

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

    .line 177
    :cond_0
    iget-object v6, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v7, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v1

    .line 178
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v8, v0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    .line 179
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v9, v0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v3

    .line 180
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v10, v0

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v4

    .line 181
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v11, v0

    .line 177
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v1, v5, v1

    .line 172
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-int v1, v5

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v2, v5, v2

    .line 173
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-int v2, v5

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v3

    .line 174
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-int p0, v5

    .line 171
    invoke-virtual {v0, v4, v1, v2, p0}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;III)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v3, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v1, v4, v1

    .line 167
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v1, v4

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v2

    .line 168
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int p0, v4

    .line 166
    invoke-virtual {v0, v3, v1, p0}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;II)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mName:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int p0, v3

    invoke-virtual {v0, v2, p0}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected doUpdateParams()V
    .locals 0

    return-void
.end method
