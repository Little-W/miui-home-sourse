.class public Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$SimpleOffsetProvider;
.super Ljava/lang/Object;
.source "SpringLayerAnimation.java"

# interfaces
.implements Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOffsetProvider"
.end annotation


# instance fields
.field mOffsetX:F

.field mOffsetY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewOffsetX()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$SimpleOffsetProvider;->mOffsetX:F

    return v0
.end method

.method public getViewOffsetY()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$SimpleOffsetProvider;->mOffsetY:F

    return v0
.end method

.method public setViewOffsetX(F)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$SimpleOffsetProvider;->mOffsetX:F

    return-void
.end method

.method public setViewOffsetY(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$SimpleOffsetProvider;->mOffsetY:F

    return-void
.end method
