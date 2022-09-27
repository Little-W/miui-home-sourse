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
    .locals 10

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 177
    :pswitch_0
    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v3

    .line 178
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    .line 179
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v7, v2

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v1

    .line 180
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v8, v0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 181
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v9, v0

    .line 177
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v3, v5, v3

    .line 172
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-int v3, v5

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v2, v5, v2

    .line 173
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-int v2, v5

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v1, v5, v1

    .line 174
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-int v1, v5

    .line 171
    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;III)V

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v3, v4, v3

    .line 167
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v2, v4, v2

    .line 168
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v2, v4

    .line 166
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;II)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$IntUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
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
