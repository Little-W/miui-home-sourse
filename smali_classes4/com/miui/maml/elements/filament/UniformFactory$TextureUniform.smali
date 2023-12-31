.class Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;
.super Lcom/miui/maml/elements/filament/UniformFactory$Uniform;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextureUniform"
.end annotation


# instance fields
.field protected mSampler:Lcom/google/android/filament/TextureSampler;

.field protected mTexture:Lcom/google/android/filament/Texture;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V
    .locals 0

    .line 290
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    .line 291
    new-instance p1, Lcom/google/android/filament/TextureSampler;

    sget-object p2, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    sget-object p3, Lcom/google/android/filament/TextureSampler$MagFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MagFilter;

    sget-object p4, Lcom/google/android/filament/TextureSampler$WrapMode;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;->mSampler:Lcom/google/android/filament/TextureSampler;

    return-void
.end method


# virtual methods
.method protected doRefresh()V
    .locals 0

    return-void
.end method

.method protected doUpdateParams()V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;->mTexture:Lcom/google/android/filament/Texture;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;->mEngine:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;->mTexture:Lcom/google/android/filament/Texture;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->destroyTexture(Lcom/google/android/filament/Texture;)V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;->mTexture:Lcom/google/android/filament/Texture;

    .line 300
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->finish()V

    return-void
.end method
