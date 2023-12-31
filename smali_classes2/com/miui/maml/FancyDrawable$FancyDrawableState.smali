.class final Lcom/miui/maml/FancyDrawable$FancyDrawableState;
.super Lcom/miui/maml/MamlDrawable$MamlDrawableState;
.source "FancyDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FancyDrawableState"
.end annotation


# instance fields
.field mRendererCore:Lcom/miui/maml/RendererCore;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RendererCore;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lcom/miui/maml/RendererCore;

    return-void
.end method


# virtual methods
.method protected createDrawable()Lcom/miui/maml/MamlDrawable;
    .locals 1

    .line 214
    new-instance v0, Lcom/miui/maml/FancyDrawable;

    iget-object p0, p0, Lcom/miui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lcom/miui/maml/RendererCore;

    invoke-direct {v0, p0}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    return-object v0
.end method
