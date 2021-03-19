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
    .locals 10

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 221
    :pswitch_0
    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v3

    .line 222
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-float v6, v6

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    .line 223
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v7, v2

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v1

    .line 224
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v8, v0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 225
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v9, v0

    .line 221
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FFFF)V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v3, v5, v3

    .line 216
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v3, v5

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v2, v5, v2

    .line 217
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v2, v5

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v1, v5, v1

    .line 218
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v1, v5

    .line 215
    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FFF)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v3, v4, v3

    .line 211
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v2, v4, v2

    .line 212
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float v2, v4

    .line 210
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FF)V

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
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
